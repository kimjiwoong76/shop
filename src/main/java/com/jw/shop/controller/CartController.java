package com.jw.shop.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jw.shop.domain.CartVO;
import com.jw.shop.domain.UserVO;
import com.jw.shop.service.CartService;

@Controller
public class CartController {
		
	private final CartService cartService;
	public CartController(CartService cartService) {
		this.cartService = cartService;
	}
	
	@RequestMapping("/cart/cart.do")
	public String cart(UserVO uvo, CartVO cvo, Model model, HttpSession session) {
		return cartService.cartList(uvo, cvo, model, session);
	}
	
	@RequestMapping(value="/cart/cartInsert.do", produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String cartInsert(UserVO uvo,CartVO cvo, Model model, HttpSession session, HttpServletResponse res) throws IOException {
		return cartService.cartInsert(uvo, cvo, model, session, res);
	}
	
	@RequestMapping("/cart/cartDelete.do")
	@ResponseBody
	public String cartDelete(CartVO vo) {
		return cartService.cartDelete(vo);
	}
}
