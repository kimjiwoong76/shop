package com.jw.shop.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.jw.shop.domain.ProductVO;
import com.jw.shop.domain.UserVO;
import com.jw.shop.service.AdmService;

@Controller
public class AdmController {
	
	private final AdmService admService;
	
	public AdmController(AdmService admService) {
		this.admService = admService;
	}
	
	@RequestMapping("/adm.do")
	public String adm(HttpSession session, HttpServletResponse response) throws IOException {
		return admService.admIndex(session, response);
	}
	
	@RequestMapping("/adm/user/list.do")
	public String admUserList(UserVO vo, Model model) {
		return admService.admUserList(vo, model);
	}
	
	@RequestMapping("/adm/product/form.do")
	public String admProductForm() {
		return admService.admProductForm();
	}
	@RequestMapping("/adm/product/formInsert.do")
	public String admProductFormInsert(ProductVO vo, Model model, MultipartFile file) throws IOException {
		return admService.admProductInsert(vo, model, file);
	}
	
	@RequestMapping("/adm/product/list.do")
	public String admProductList(ProductVO vo, Model model) {
		return admService.admProductList(vo, model);
	}
	
	@RequestMapping("/adm/product/form_update.do")
	public String admProductFormUpdate() {
		return admService.admPrdFormUpdate();
	}
	
}
