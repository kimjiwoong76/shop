//package com.jw.shop.controller;
//
//import javax.servlet.http.HttpSession;
//
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.RestController;
//
//import com.jw.shop.domain.BuyVO;
//import com.jw.shop.domain.CartVO;
//import com.jw.shop.domain.ProductVO;
//import com.jw.shop.domain.UserVO;
//import com.jw.shop.service.BuyService;
//import com.jw.shop.service.ProductService;
//import com.jw.shop.service.RestService;
//
//@RestController
//public class ProductRestController {
//
////	private final RestService restService;
////	private final BuyService buyService;
//	
////	public ProductRestController(RestService restService, BuyService buyService){
////		this.restService = restService;
////		this.buyService = buyService;
////	}
//	
//	
//	
////	@RequestMapping(value="/product/{no}/{curPage}", produces = "application/json; charset=utf8")
////	public String list(@PathVariable int no, @PathVariable int curPage, ProductVO vo, Model model) {
//////		return productService.prdSelect(cateCode, curPage ,vo, model);
////		return restService.RestServiceList(no, curPage);
////	}
//	
//}
