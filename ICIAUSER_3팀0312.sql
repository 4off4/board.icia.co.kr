ALTER TABLE TBL_HIBOARD MODIFY HIBBS_SEQ NOT NULL;

COMMIT;

SELECT a.HIBBS_SEQ as hiBbsSeq,
       a.USER_ID as userId,
       b.USER_NAME2 as userName2,
       a.HIBBS_GROUP as hiBbsGroup,
       a.HIBBS_ORDER as hiBbsOrder,
       a.HIBBS_INDENT as hiBbsIndent,
       a.HIBBS_TITLE as hiBbsTitle,
       a.HIBBS_CONTENT as hiBbsContent,
       a.HIBBS_READ_CNT as hiBbsReadCnt,
       a.REG_DATE as regDate,
       a.HIBBS_PARENT as hiBbsParent
FROM  tbl_hiboard a , tbl_user2 b
where a.user_id = b.user_id2
ORDER BY a.HIBBS_GROUP DESC, a.HIBBS_ORDER ASC;

SELECT a.QNA_HIBBS_SEQ as qnaHiBbsSeq,
       a.USER_ID as userId,
       b.USER_NAME2 as userName2,
       a.QNA_HIBBS_GROUP as qnaHiBbsGroup,
       a.QNA_HIBBS_ORDER as qnaHiBbsOrder,
       a.QNA_HIBBS_INDENT as qnaHiBbsIndent,
       a.QNA_HIBBS_TITLE as qnaHiBbsTitle,
       a.QNA_HIBBS_CONTENT as qnaHiBbsContent,
       a.QNA_HIBBS_READ_CNT as qnaHiBbsReadCnt,
       a.REG_DATE as regDate
FROM  qna_hiboard a , tbl_user2 b
where a.user_id = b.user_id2
ORDER BY A.QNA_HIBBS_GROUP DESC, A.QNA_HIBBS_ORDER ASC;


SELECT
    A.HIBBS_SEQ,
    NVL(A.USER_ID, '') AS USER_ID,
    NVL(B.USER_NAME2, '') AS USER_NAME, 
    NVL(B.USER_EMAIL2, '') AS USER_EMAIL,
    NVL(B.GENDER2, '') AS GENDER,
    NVL(A.HIBBS_GROUP, 0) AS HIBBS_GROUP,
    NVL(A.HIBBS_ORDER, 0) AS HIBBS_ORDER,
    NVL(A.HIBBS_INDENT, 0) AS HIBBS_INDENT,
    NVL(A.HIBBS_TITLE, '') AS HIBBS_TITLE,
    NVL(A.HIBBS_CONTENT, '') AS HIBBS_CONTENT,
    NVL(A.HIBBS_READ_CNT, 0) AS HIBBS_READ_CNT,
    NVL(TO_CHAR(A.REG_DATE, 'YYYY.MM.DD HH24:MI:SS'), '') AS REG_DATE,
    NVL(A.HIBBS_PARENT, 0) AS HIBBS_PARENT,
    NVL(A.TRAV_PLAN, '') AS TRAV_PLAN
FROM
    TBL_HIBOARD A, TBL_USER2 B
WHERE 
    A.HIBBS_SEQ = 9999
AND A.USER_ID = B.USER_ID2;


 SELECT 
 HIBBS_SEQ as hiBbsSeq,
       NVL(A.USER_ID, '') AS userId,
       NVL(B.USER_EMAIL2, '') AS userEmail,
       NVL(A.HIBBS_GROUP, '') AS hiBbsGroup,
       NVL(A.HIBBS_ORDER, '') AS hiBbsOrder,
       NVL(A.HIBBS_INDENT, '') AS hiBbsIndent,
       NVL(A.HIBBS_TITLE, '') AS hiBbsTitle,
       NVL(A.HIBBS_CONTENT, '') AS hiBbsContent,
       NVL(A.HIBBS_READ_CNT, '') AS hiBbsReadCnt,
       NVL(TO_CHAR(A.REG_DATE, 'YYYY.MM.DD HH24:MI:SS'), '') AS REG_DATE,
       NVL(A.HIBBS_PARENT, '') AS hiBbsParent
FROM TBL_HIBOARD A, TBL_USER2 B
WHERE HIBBS_PARENT = 9999
  AND A.USER_ID = B.USER_ID2
  ORDER BY A.REG_DATE DESC
  
  
