package com.jw.shop.service.impl;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.jw.shop.domain.ShopMemberVO;
import com.jw.shop.mapper.ShopMemberMapper;
import com.jw.shop.service.ShopMemberService;

@Service
public class ShopMemberServiceImpl implements ShopMemberService {

	private final ShopMemberMapper shopMemberMapper;

	public ShopMemberServiceImpl(ShopMemberMapper shopMemberMapper) {
		this.shopMemberMapper = shopMemberMapper;
	}

	@Override
	public String login(Model model, HttpSession session) {
		if (session.getAttribute("shopMember") == null) {
			model.addAttribute("page_name", "로그인");
			return "/register/login";
		} else {
			System.out.println(session.getAttribute("shopMember"));
			return "redirect:/index.do";
		}
	}

	@Override
	public String loginProc(ShopMemberVO vo, Model model, HttpSession session) throws Exception {
		ShopMemberVO login = shopMemberMapper.shopRegLogin(vo);
		if (login == null) {
			session.setAttribute("shopMember", null);
		} else {
			System.out.println("통과");
			session.setAttribute("shopMember", login);
			if (login.getShop_id().equals("admin")) {
				System.out.println("관리자님 환영합니다");
			}
		}
		return "redirect:/index.do";
	}

	@Override
	public String logout(HttpSession session) {
		session.setAttribute("shopMember", null);
		return "redirect:/index.do";
	}

	@Override
	public String shopRegUpdate(ShopMemberVO vo, Model model, HttpSession session) {
		ShopMemberVO ss = (ShopMemberVO) session.getAttribute("shopMember");
		ShopMemberVO regUpdate = shopMemberMapper.shopRegUpdate(ss);
		model.addAttribute("shopMember", regUpdate);
		return "/register/reg_update";
	}

	@Override
	public String shopRegUpdateProc(ShopMemberVO vo, Model model, HttpSession session) {
		ShopMemberVO ss = (ShopMemberVO) session.getAttribute("shopMember");
		vo.setShop_id(ss.getShop_id());
		shopMemberMapper.shopRegUpdateProc(vo);
		return "/register/reg_update";
	}

	@Override
	public String delete() {
		return "/register/delete";
	}

	@Override
	public String shopRegDelete(ShopMemberVO vo, HttpSession session) {
		ShopMemberVO ss = (ShopMemberVO) session.getAttribute("shopMember");
		vo.setShop_id(ss.getShop_id());
		shopMemberMapper.shopRegDelete(vo);
		session.removeAttribute("shopMember");
		return "redirect:/index.do";
	}

	@Override
	public String regForm(Model model, HttpSession session) {
		if (session.getAttribute("shopMember") == null) {
			model.addAttribute("test", "test23");
			return "/register/register";
		} else {
			return "redirect:/index.do";
		}
	}
	
	@Override
	public String shopRegInsert(ShopMemberVO vo, String command) {
		if (command == null) {
			return "redirect:index.do";
		} else {
			System.out.println("회원가입 처리");
			shopMemberMapper.shopRegInsert(vo);
			return "/register/reg_welcome";
		}
	}

}
