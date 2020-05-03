package com.jw.shop.service;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.jw.shop.domain.CartVO;
import com.jw.shop.domain.ProductVO;
import com.jw.shop.domain.UserVO;

public interface CartService {
	String cartInsert(UserVO uvo, CartVO cvo, Model model, HttpSession session, HttpServletResponse res) throws IOException;
	String cartDelete(CartVO vo);
	String cartList(UserVO uvo, CartVO cvo, Model model, HttpSession session);
}
