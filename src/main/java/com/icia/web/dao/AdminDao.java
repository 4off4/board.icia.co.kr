package com.icia.web.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import com.icia.web.model.Admin;
import com.icia.web.model.HiBoard;


@Repository("adminDao")
public interface AdminDao {
   
   //관리자 정보 조회
   public Admin adminSelect(String adminId);


   
   /////////////////////////////////////////////
   //회원 목록
   public List<Admin> adminList();
   
   //회원 입력
   public void insertAdmin(Admin admin);
   
   //회원 삭제
   void adminDelete(Admin admin);
   /********여기부터 게시판임*****/
   //동행 게시판 불러오기
   public List<Admin> testList(Admin admin);
   
   //동행게시판 게시물 조회
   public Admin testSelect(long hiBbsSeq);
   
   //동행게시판 게시물 댓글 조회
   public List<Admin> testReplyList(Admin admin);
   
   //동행게시판 뷰
   public Admin adminView(long hiBbsSeq);
   
   //동행게시판 게시물 삭제
   public int adminListDelete(long hiBbsSeq);
   
   //동행게시판 게시물 댓글 삭제
   public int adminReplyDelete(Admin admin);

   //고객센터 게시판 불러오기
   public List<Admin> qList(Admin admin);
   
   //고객센터 뷰
   public Admin qSelect(long qnaHiBbsSeq);
   
  //고객센터 게시물 삭제
   public int adminqListDelete(long qnaHiBbsSeq);
  
  //고객센터 답글 등록
   public int adminReplyInsert(Admin admin);
   
   public Admin userSelect(String userId2);
   
   public int userDelete(String userId2);
}