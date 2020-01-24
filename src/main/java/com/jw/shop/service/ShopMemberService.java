package com.jw.shop.service;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.jw.shop.domain.ShopMemberVO;

public interface ShopMemberService {

	// 로그인페이지
	String login(Model model, HttpSession session);

	// 로그인
	String loginProc(ShopMemberVO vo, Model model, HttpSession session) throws Exception;

	// 로그아웃
	String logout(HttpSession session);

	// 회원정보수정 페이지 정보 가져오기
	String shopRegUpdate(ShopMemberVO vo, Model model, HttpSession session);

	// 회원정보 수정
	String shopRegUpdateProc(ShopMemberVO vo, Model model, HttpSession session);

	// 회원탈퇴 페이지
	String delete();

	// 회원탈퇴
	String shopRegDelete(ShopMemberVO vo, HttpSession session);

	// 회원가입페이지
	String regForm(Model model, HttpSession session);

	// 회원가입
	String shopRegInsert(ShopMemberVO vo, String command);
}
