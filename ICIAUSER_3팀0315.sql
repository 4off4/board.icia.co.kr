INSERT INTO PLAN_DATE (
    P_NO_SEQ2,
    P_DAY,
    P_PLACE,
    USER_ID2
) VALUES (
    2,
    20200203,
    REPLACE(LTRIM('송도동 햄버거'),' ',''),
    'qwer'
);

INSERT INTO PLAN_MAKE (
    P_NO_SEQ,
    USER_ID2,
    P_TITLE,
    REG_DATE2,
    P_START,
    P_END
) VALUES (
    2, 'qwer', '공배제거2', SYSDATE, 20200203, 20200204
);

DELETE FROM PLAN_MAKE WHERE USER_ID2 = 'sandwich';
 
commit;

SELECT
    TO_CHAR(TO_DATE(NVL(P_DAY, '')), 'YYYY-MM-DD') AS P_DAY,
    p_place,
    p_no_seq2,
    user_id2
FROM
    plan_date;