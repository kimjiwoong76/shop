package com.jw.shop.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.jw.shop.domain.BuyVO;
import com.jw.shop.domain.ProductVO;
import com.jw.shop.domain.UserVO;
import com.jw.shop.service.AdmService;

@Controller
public class AdmController {
	
	private Logger log = Logger.getLogger(getClass());
	
	private final AdmService admService;
	
	public AdmController(AdmService admService) {
		this.admService = admService;
	}
	
	@RequestMapping("/adm.do")
	public String adm(HttpSession session, HttpServletResponse response, BuyVO vo, Model model, @RequestParam(defaultValue="1") int curPage) throws IOException {
		return admService.admIndex(session, response, vo, model, curPage);
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
	public String admProductFormInsert(ProductVO vo, Model model, MultipartHttpServletRequest file) throws IOException {
		return admService.admProductInsert(vo, model, file);
	}
	
	@RequestMapping("/adm/product/list.do")
	public String admProductList(ProductVO vo, Model model) {
		return admService.admProductList(vo, model);
	}
	
	@RequestMapping("/adm/product/form_update.do")
	public String admProductFormUpdate(@RequestParam String prdNum, ProductVO vo, Model model) throws IOException {
		return admService.admPrdFormUpdate(prdNum, vo, model);
	}
	@RequestMapping("/adm/product/form_updateProc.do")
	public String admProductFormUpdateProc(ProductVO vo, Model model, MultipartHttpServletRequest file) throws IOException {
		return admService.admPrdFormUpdateProc(vo, model, file);
	}
	@RequestMapping("/product/delete.do")
	public String admProductDelete(ProductVO vo) {
		return admService.admProductDelete(vo);
	}
	
	
	
}
