//package com.jw.spring;
//
//import java.util.List;
//
//import com.jw.spring.member.MemberDAO;
//import com.jw.spring.member.MemberVO;
//
//public class MemberServiceClient {
//	public static void main(String[] args) {
//		MemberDAO memberDAO = new MemberDAO();
//		MemberVO vo = new MemberVO();
//		vo.setUserId("jw4");
//		vo.setUserPwd("wldnd2");
//		vo.setUserName("������");
//		vo.setUserEmail("kingjiwoong@naver.com");
//		memberDAO.insertMember(vo);
//		vo.setSearchCondition("userid");
//		vo.setSearchKeyword("");
//		List<MemberVO> memberList = memberDAO.getMemberList(vo);
//		for (MemberVO member : memberList) {
//			System.out.println("===>" + member.toString());
//		}
//	}
//}
