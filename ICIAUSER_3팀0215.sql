SELECT
    A.P_NO_SEQ,
    NVL(A.USER_ID2,'') AS USER_ID2,
    NVL(A.P_TITLE,'') AS P_TITLE,
    NVL(TO_CHAR(A.REG_DATE2, 'YYYY.MM.DD'),'') AS REG_DATE2,
    NVL(A.P_START,'') AS P_START,
    NVL(A.P_END,'') AS P_END,
    NVL(TO_CHAR(B.P_DAY, 'YYYY.MM.DD'),'') AS P_DAY,
    NVL(B.P_PLACE,'') AS P_PLACE
FROM
    PLAN_MAKE A, PLAN_DATE B
WHERE 
      A.P_NO_SEQ = #{value}
  AND A.P_NO_SEQ = B.P_NO_SEQ;
  
INSERT INTO plan_make (
    p_no_seq,
    user_id2,
    p_title,
    reg_date2,
    p_start,
    p_end
) VALUES (
    0,'qwer','dd',sysdate,12345678,12345678
);
commit;

COMMENT ON COLUMN PLAN_DATE.USER_ID2 IS '아이디';
commit;
