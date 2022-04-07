DELETE FROM PLAN_MAKE
 WHERE USER_ID2 = 'sandwich';
 
 commit;
 
SELECT 
    COUNT(*)
  FROM TBL_USER2
 WHERE USER_ID2 = #{userId2} AND USER_PWD2 = #{};
 
SELECT a.QNA_HIBBS_SEQ as qnahiBbsSeq,
       a.USER_ID as userId,
       b.USER_NAME2 as userName2,
       a.QNA_HIBBS_GROUP as qnahiBbsGroup,
       a.QNA_HIBBS_ORDER as qnahiBbsOrder,
       a.QNA_HIBBS_INDENT as qnahiBbsIndent,
       a.QNA_HIBBS_TITLE as qnahiBbsTitle,
       a.QNA_HIBBS_CONTENT as qnahiBbsContent,
       a.QNA_HIBBS_READ_CNT as qnahiBbsReadCnt,
       a.REG_DATE as regDate
FROM  qna_hiboard a , tbl_user2 b
where a.user_id = b.user_id2;

INSERT INTO QNA_HIBOARD (
    QNA_HIBBS_SEQ,
    USER_ID,
    QNA_HIBBS_GROUP,
    QNA_HIBBS_ORDER,
    QNA_HIBBS_INDENT,
    QNA_HIBBS_TITLE,
    QNA_HIBBS_CONTENT,
    QNA_HIBBS_READ_CNT,
    REG_DATE,
    QNA_HIBBS_PARENT
) VALUES (
    #{qnaHiBbsSeq},
    #{adminId},
    #{qnaHiBbsGroup},
    #{hiBbsOrder},
    #{hiBbsIndent},
    #{hiBbsTitle},
    #{hiBbsContent},
    0,
    SYSDATE,
    #{hiBbsParent}
);