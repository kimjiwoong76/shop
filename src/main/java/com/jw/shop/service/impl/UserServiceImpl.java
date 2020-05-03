package com.jw.shop.service.impl;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.jw.shop.domain.UserVO;
import com.jw.shop.mapper.UserMapper;
import com.jw.shop.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	private final UserMapper userMapper;

	public UserServiceImpl(UserMapper userMapper) {
		this.userMapper = userMapper;
	}
	
	
	// 회원가입
	@Override
	public String userJoin(Model model, HttpSession session) {
		if (session.getAttribute("shopMember") == null) {
			model.addAttribute("test", "test23");
			return "/user/register";
		} else {
			return "redirect:/index.do";
		}
	}
	
	@Override
	public String userJoinProc(UserVO vo, String command) {
		if (command == null) {
			return "redirect:index.do";
		} else {
			System.out.println("회원가입 처리");
			userMapper.userJoinProc(vo);
			return "/user/reg_welcome";
		}
	}
	//회원정보 수정
	@Override
	public String userUpdate(UserVO vo, Model model, HttpSession session) {
		UserVO ss = (UserVO) session.getAttribute("shopMember");
		UserVO userUpdate = userMapper.userUpdate(ss);
		model.addAttribute("userUpdate", userUpdate);
		return "/user/reg_update";
	}

	@Override
	public String userUpdateProc(UserVO vo, Model model, HttpSession session) {
		UserVO ss = (UserVO) session.getAttribute("shopMember");
		vo.setShop_id(ss.getShop_id());
		userMapper.userUpdateProc(vo);
		return "/user/reg_update";
	}
	
	//로그인
	@Override
	public String login(Model model, HttpSession session) {
		if (session.getAttribute("shopMember") == null) {
			model.addAttribute("page_name", "로그인");
			return "/user/login";
		} else {
			System.out.println(session.getAttribute("shopMember"));
			return "redirect:/index.do";
		}
	}

	@Override
	public String loginProc(UserVO vo, Model model, HttpSession session) throws Exception {
		if(vo.getShop_id() == null) {
			return "/user/login";
		}
		UserVO login = userMapper.userLoginProc(vo);
		if (login == null) {
			model.addAttribute("loginNull", "아이디 또는 비밀번호가 틀렸습니다.");
			return "/user/login";
		} else {
			System.out.println("통과");
			session.setAttribute("shopMember", login);
			if (login.getShop_id().equals("admin")) {
				System.out.println("관리자님 환영합니다");
				return "redirect:/adm.do";
			}
			return "/index";
		}
	}

	@Override
	public String logout(HttpSession session) {
		session.setAttribute("shopMember", null);
		return "redirect:/index.do";
	}

	
	//회원탈퇴

	@Override
	public String userDelete() {
		return "/user/delete";
	}

	@Override
	public String userDeleteProc(UserVO vo, HttpSession session) {
		UserVO ss = (UserVO) session.getAttribute("shopMember");
		vo.setShop_id(ss.getShop_id());
		userMapper.userDeleteProc(vo);
		session.removeAttribute("shopMember");
		return "redirect:/index.do";
	}

	

}
