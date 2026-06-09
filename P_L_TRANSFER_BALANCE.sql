-- P_L_TRANSFER

--  Code:
-- Count: 51952
-- Sum: 0
--  Prod :
-- Count: 51952
-- Sum: 0


WITH base AS (
    SELECT
        branch_code,
        'INR'       AS currency,
        cgl,
        inr_balance AS balance,
        balance_date
    FROM
        gl_balance
    WHERE
            balance_date = TO_DATE('31-MAR-26', 'DD-MON-RR')
        AND ( cgl LIKE '7%'
              OR cgl LIKE '8%' )
), base_circle AS (
    SELECT
        a.code        AS branch_code,
        b.branch_code AS circle_code
    FROM
        branch_master a
        LEFT OUTER JOIN circle_master b ON a.circle_code = b.circle_code
    WHERE
        NOT EXISTS (
            SELECT
                1
            FROM
                circle_master b2
            WHERE
                a.code = b2.branch_code
        )
), df_without_circle AS (
    SELECT
        b.branch_code,
        bc.circle_code,
        SUM(b.balance) AS balance
    FROM
        base        b
        LEFT JOIN base_circle bc ON b.branch_code = bc.branch_code
    WHERE
        bc.circle_code IS NOT NULL
    GROUP BY
        b.branch_code,
        bc.circle_code
),

 p_l_transactions_raw AS (
    SELECT
        circle_code,
        123          AS batch_id,
        1            AS transaction_count,
        branch_code,
        'INR'        AS currency,
        '2110505001' AS cgl,
        CASE
            WHEN balance <= 0 THEN
                abs(balance)
            ELSE
                0
        END          AS credit_amount,
        CASE
            WHEN balance > 0 THEN
                - balance
            ELSE
                0
        END          AS debit_amount
    FROM
        df_without_circle
    UNION ALL
    SELECT
        circle_code,
        123          AS batch_id,
        1            AS transaction_count,
        branch_code,
        'INR'        AS currency,
        '1106505001' AS cgl,
        CASE
            WHEN balance > 0 THEN
                balance
            ELSE
                0
        END          AS credit_amount,
        CASE
            WHEN balance <= 0 THEN
                balance
            ELSE
                0
        END          AS debit_amount
    FROM
        df_without_circle
    UNION ALL
    SELECT
        circle_code,
        123          AS batch_id,
        1            AS transaction_count,
        circle_code  AS branch_code,
        'INR'        AS currency,
        '1106505001' AS cgl,
        CASE
            WHEN balance <= 0 THEN
                abs(balance)
            ELSE
                0
        END          AS credit_amount,
        CASE
            WHEN balance > 0 THEN
                - balance
            ELSE
                0
        END          AS debit_amount
    FROM
        df_without_circle
    UNION ALL
    SELECT
        circle_code,
        123          AS batch_id,
        1            AS transaction_count,
        circle_code  AS branch_code,
        'INR'        AS currency,
        '2110505001' AS cgl,
        CASE
            WHEN balance > 0 THEN
                balance
            ELSE
                0
        END          AS credit_amount,
        CASE
            WHEN balance <= 0 THEN
                balance
            ELSE
                0
        END          AS debit_amount
    FROM
        df_without_circle
), p_l_transactions AS (
    SELECT
        circle_code,
        batch_id,
        transaction_count,
        branch_code,
        currency,
        cgl,
        debit_amount,
        credit_amount,
        '31-03-25'                                            AS transaction_date,
        'A'                                                   AS source_flag,
        456                                                   AS journal_id,
        'P and L Prior Adjustment for Circle ' || circle_code AS narration
    FROM
        p_l_transactions_raw
),
p_l_balance as (select branch_code,currency,cgl,sum(credit_amount + debit_amount) as BALANCE , sum(credit_amount + debit_amount) as INR_BALANCE, '31-MAR-26' as BALANCE_DATE from p_l_transactions group by branch_code,cgl,currency )
select * from p_l_balance;
