package com.jw.shop.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jw.shop.domain.ShopMemberVO;
import com.jw.shop.service.ShopMemberService;

@Controller
public class ShopMemberController {

	private final ShopMemberService shopMemberService;

	public ShopMemberController(ShopMemberService shopMemberService) {
		this.shopMemberService = shopMemberService;
	}

	// 로그인
	@RequestMapping("/login.do")
	public String login(Model model, HttpSession session) {
		return shopMemberService.login(model, session);
	}

	@RequestMapping("/loginProc.do")
	public String loginProc(ShopMemberVO vo, Model model, HttpSession session) throws Exception {
		return shopMemberService.loginProc(vo, model, session);
	}

	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		return shopMemberService.logout(session);
	}

	@RequestMapping("/regUpdate.do")
	public String regUpdateForm(ShopMemberVO vo, Model model, HttpSession session) {
		return shopMemberService.shopRegUpdate(vo, model, session);
	}

	@RequestMapping("/updateMemberProc.do")
	public String regUpdateProc(ShopMemberVO vo, Model model, HttpSession session) {
		return shopMemberService.shopRegUpdateProc(vo, model, session);
	}

	@RequestMapping("/delete.do")
	public String delete() {
		return shopMemberService.delete();
	}

	@RequestMapping("/deleteProc.do")
	public String delete(ShopMemberVO vo, HttpSession session) {
		return shopMemberService.shopRegDelete(vo, session);
	}

	// 회원가입 및 정보
	@RequestMapping("/register.do")
	public String regForm(Model model, HttpSession session) {
		return shopMemberService.regForm(model, session);
	}

	@RequestMapping("/insertMember.do")
	public String inserMember(ShopMemberVO vo, String command) {
		return shopMemberService.shopRegInsert(vo, command);
	}
}
