	SELECT
	    A.P_NO_SEQ,
	    NVL(A.USER_ID2,'') AS USER_ID2,
	    NVL(A.P_TITLE,'') AS P_TITLE,
	    NVL(TO_CHAR(A.REG_DATE2, 'YYYY.MM.DD'),'') AS REG_DATE2,
	    NVL(A.P_START,'') AS P_START,
	    NVL(A.P_END,'') AS P_END,
	    NVL(B.P_DAY,'') AS P_DAY,
	    NVL(B.P_PLACE,'') AS P_PLACE
	FROM
	    PLAN_MAKE A, PLAN_DATE B
	WHERE 
	      A.P_NO_SEQ = 9
	  AND A.P_NO_SEQ = B.P_NO_SEQ;
	      
          
select *
  
  from plan_date;
  
  
  INSERT INTO plan_date (
    p_no_seq,
    p_day,
    p_place
) VALUES ( 
    9,87654321,'서울'
);
commit;

select * from plan_date;

SELECT
    P_NO_SEQ,
    NVL(USER_ID2,'') AS USER_ID2,
    NVL(P_TITLE,'') AS P_TITLE,
    NVL(TO_CHAR(REG_DATE2, 'YYYY.MM.DD'),'') AS REG_DATE2,
    NVL(P_START,'') AS P_START,
    NVL(P_END,'') AS P_END
FROM
    PLAN_MAKE 
WHERE 
      P_NO_SEQ = 9;