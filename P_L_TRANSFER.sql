-- P_L_TRANSFER

--  Code:
-- Count: 25978
-- Sum: 1268056802549.06
--  Prod :
-- Count: 25978
-- Sum: 1268056802549.06





  WITH base AS (
        SELECT BRANCH_CODE, CURRENCY, CGL, INR_BALANCE as BALANCE, BALANCE_DATE
        FROM GL_BALANCE
        WHERE BALANCE_DATE = TO_DATE('31-MAR-26', 'DD-MON-RR')
          AND (CGL LIKE '7%' OR CGL LIKE '8%')
    ),
    base_branch AS (
        SELECT A.CODE AS BRANCH_CODE, B.BRANCH_CODE AS CIRCLE_CODE
        FROM BRANCH_MASTER A
        LEFT OUTER JOIN CIRCLE_MASTER B ON A.CIRCLE_CODE = B.CIRCLE_CODE
    ),
    df_with_all_pl AS (
        SELECT 
            b.BRANCH_CODE,
            bb.CIRCLE_CODE AS CIRCLE_BRANCH_CODE,
            SUM(b.BALANCE) AS PROFIT_LOSS,
            TO_DATE('05-MAR-26', 'DD-MON-RR') AS TRANSFER_DATE
        FROM base b
        LEFT JOIN base_branch bb ON b.BRANCH_CODE = bb.BRANCH_CODE
        GROUP BY b.BRANCH_CODE, bb.CIRCLE_CODE
    )
    SELECT * FROM df_with_all_pl ;  



