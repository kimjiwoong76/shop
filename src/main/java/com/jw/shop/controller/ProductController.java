package com.jw.shop.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jw.shop.domain.BuyVO;
import com.jw.shop.domain.CartVO;
import com.jw.shop.domain.ProductVO;
import com.jw.shop.domain.UserVO;
import com.jw.shop.service.BuyService;
import com.jw.shop.service.ProductService;

@Controller
public class ProductController {
	
	private final ProductService productService;
	private final BuyService buyService;
	
	public ProductController(ProductService productService, BuyService buyService){
		this.productService = productService;
		this.buyService = buyService;
	}
	
	
	
	@RequestMapping("/product/list.do")
	public String list(@RequestParam String cateCode, @RequestParam(defaultValue="1") int curPage, ProductVO vo, Model model) {		
		return productService.prdSelect(cateCode, curPage ,vo, model);
	}
	
	
	@RequestMapping("/product/view.do")
	public String view(@RequestParam String prdNum, ProductVO vo, Model model) {
		return productService.prdView(prdNum, vo, model);
	}
	
	@RequestMapping("/product/buy.do")
	public String buy(UserVO uvo, ProductVO vo, CartVO cvo, Model model, HttpSession session) {
		return productService.buy(uvo, vo, cvo, model, session);
	}
	@RequestMapping("/product/cart_buy.do")
	public String cart_buy(UserVO uvo, ProductVO vo, CartVO cvo, Model model, HttpSession session) {
		return productService.cart_buy(uvo, vo, cvo, model, session);
	}
	@RequestMapping("/buy/success.do")
	public String buy_success(UserVO uvo, ProductVO vo, CartVO cvo, Model model, HttpSession session) {
		return "/buy/success";
	}
	@RequestMapping("/buy/fail.do")
	public String buy_fail(UserVO uvo, ProductVO vo, CartVO cvo, Model model, HttpSession session) {
		return "/buy/fail";
	}
	
	@RequestMapping(value="/buy/buyProc.do", produces = "application/text; charset=utf8", method=RequestMethod.GET)
	@ResponseBody
	public String buyProc(BuyVO vo, Model model, String amount, String buy_name) throws Exception {
		return buyService.buyProc(vo, model, amount, buy_name);
	}
	
}
