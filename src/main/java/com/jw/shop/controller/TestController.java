package com.jw.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	@RequestMapping("/testin.do")
	public String test() {
		return "/test";
	}
	
}
