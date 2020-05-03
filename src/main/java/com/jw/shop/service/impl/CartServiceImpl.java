package com.jw.shop.service.impl;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.jw.shop.domain.CartVO;
import com.jw.shop.domain.UserVO;
import com.jw.shop.mapper.CartMapper;
import com.jw.shop.service.CartService;


@Service
public class CartServiceImpl implements CartService {
	
	private final CartMapper cartMapper;
	
	public CartServiceImpl(CartMapper cartMapper) {
		this.cartMapper = cartMapper;
	}
	
	@Override
	public String cartInsert(UserVO uvo, CartVO cvo, Model model, HttpSession session, HttpServletResponse res) throws IOException {
		//TODO 중복값 제외 만들어야 함
		res.setContentType("text/html; charset=utf-8");
		UserVO userSession = (UserVO) session.getAttribute("shopMember");
		if(userSession != null) {
			cvo.setShop_id(userSession.getShop_id());
			System.out.println(cvo);
			int cartCheck = cartMapper.cartCheck(cvo);
			if(cartCheck == 0) {
				cartMapper.cartInsert(cvo);
				return "카트에 상품이 담겼습니다.";
			} else {
				return "이미 상품이 담겨 있습니다.";
			}
		} else {
			return "로그인 후 이용가능한 서비스 입니다.";
		}
	}

	@Override
	public String cartList(UserVO uvo, CartVO cvo, Model model, HttpSession session) {
		UserVO userSession = (UserVO) session.getAttribute("shopMember");
		if(userSession != null) {
			cvo.setShop_id(userSession.getShop_id());
			System.out.println(cvo);
			List<Map<String, Object>> result = cartMapper.cartSelect(cvo);
			for(int i=0; i < result.size(); i++) {
				CartVO list = (CartVO) result.get(i);
				System.out.println(list);
			}
			model.addAttribute("result", result);
			return "/cart/cart";
		} else {
			System.out.println("로그인 에러 페이지 못찾네");
			model.addAttribute("cartMessage", "로그인 후 이용가능합니다.");
			return "/user/login";
		}
	}

	@Override
	public String cartDelete(CartVO vo) {
		cartMapper.cartDelete(vo);
		return null;
	}

}
