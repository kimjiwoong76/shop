package com.jw.shop.service;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

import com.jw.shop.domain.CartVO;
import com.jw.shop.domain.ProductVO;
import com.jw.shop.domain.UserVO;

public interface ProductService {
	
	//상품 리스트
	String prdSelect(@RequestParam String cateCode, @RequestParam int curPage, ProductVO vo, Model model);
	
	//상품 상세보기
	String prdView(@RequestParam String prdNum, ProductVO vo, Model model);
	
	//상품 구매
	String buy(UserVO uvo, ProductVO vo, CartVO cvo, Model model, HttpSession session);
	String cart_buy(UserVO uvo, ProductVO vo, CartVO cvo, Model model, HttpSession session);
	
	//상품 삭제
	void prdDelete();
	
	//상품 업데이트
	void prdUpdate();
	
	//상품 검색
	public String search(@RequestParam(defaultValue="") String search, ProductVO vo, Model model);
}
