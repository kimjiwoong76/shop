package com.jw.shop.service;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

import com.jw.shop.domain.ProductVO;

public interface ProductService {
	
	//상품 리스트
	String prdSelect(@RequestParam String cateCode, ProductVO vo, Model model);
	
	//상품 상세보기
	String prdView(@RequestParam String prdNum, ProductVO vo, Model model);
	
	//상품 삭제
	void prdDelete();
	
	//상품 업데이트
	void prdUpdate();
	
	//상품 검색
	String prdSelectOne(@RequestParam String prdNum, ProductVO vo, Model model);
}
