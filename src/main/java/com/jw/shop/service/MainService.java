package com.jw.shop.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.jw.shop.domain.ProductVO;

public interface MainService {

	// 메인 아이템 보여주기
	public String index(ProductVO vo, Model model, HttpServletRequest req);
	
	
	// 아이템 검색
	public String search(ProductVO vo, Model model);
	
}
