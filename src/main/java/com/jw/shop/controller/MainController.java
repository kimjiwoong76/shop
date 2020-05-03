package com.jw.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jw.shop.domain.ProductVO;
import com.jw.shop.service.MainService;

@Controller
public class MainController {
	
	private MainService mainService;
	
	public MainController(MainService mainService){
		this.mainService = mainService;
	}
	
	
	@RequestMapping("/index.do")
	public String index(ProductVO vo, Model model) {
		return mainService.index(vo, model);
	}
}
