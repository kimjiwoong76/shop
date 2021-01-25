package com.jw.shop.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jw.shop.domain.CookieVO;
import com.jw.shop.domain.ProductVO;
import com.jw.shop.service.MainService;

@Controller
public class MainController {
	
	private MainService mainService;
	
	public MainController(MainService mainService){
		this.mainService = mainService;
	}
	
	
	
	@RequestMapping("/intro")
	public String intro() {
		return "intro3";
	}
	
	@RequestMapping(value= {"/", "/index.do"})
	public String index(ProductVO vo, Model model, HttpServletRequest req) {
		return mainService.index(vo, model, req);
	}
	
	
	
	
	@RequestMapping("/search.do")
	public String serach(ProductVO vo, Model model) {
		return mainService.search(vo, model);
	}
	
	@RequestMapping("/cookie.do")
	public String cookie() {
		return "cookie";
	}
	
}
