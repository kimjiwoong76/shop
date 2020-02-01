package com.jw.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jw.shop.domain.ProductVO;
import com.jw.shop.service.ProductService;

@Controller
public class ProductController {
	
	ProductService productService;
	
	ProductController(ProductService productService){
		this.productService = productService;
	}
	
	@RequestMapping("/product/list.do")
	public String list(@RequestParam String cateCode, ProductVO vo, Model model) {		
		return productService.prdSelect(cateCode, vo, model);
	}
	
	
	@RequestMapping("/product/view.do")
	public String view(@RequestParam String prdNum, ProductVO vo, Model model) {
		return productService.prdView(prdNum, vo, model);
	}
	
	
}
