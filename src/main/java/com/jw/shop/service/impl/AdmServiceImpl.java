package com.jw.shop.service.impl;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.jw.shop.domain.ProductVO;
import com.jw.shop.domain.UserVO;
import com.jw.shop.mapper.ProductMapper;
import com.jw.shop.mapper.UserMapper;
import com.jw.shop.service.AdmService;
import com.jw.shop.util.Upload;

@Service
@RequestMapping("/adm")
public class AdmServiceImpl implements AdmService {

	private final ProductMapper productMapper;
	private final UserMapper userMapper;
	private final Upload upload;
	
	public AdmServiceImpl(ProductMapper productMapper, UserMapper userMapper, Upload upload) {
		this.productMapper = productMapper;
		this.userMapper = userMapper;
		this.upload = upload;
	}
	
	@Override
	public String admIndex(HttpSession session, HttpServletResponse response) throws IOException {
		// TODO 차트 생성해야함
		UserVO userInfo = (UserVO) session.getAttribute("shopMember");
		System.out.println(userInfo);
		if(userInfo == null) {
			return "/index";
		} else if(userInfo.getShop_id().equals("admin")){
			return "/adm/index";
		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>alert('관리자만 접근 가능합니다'); history.go(-1);</script>");
			out.flush();
			return null;
		}
	}

	@Override
	public String admUserList(UserVO vo, Model model) {
		
		return "/adm/user/user_list";
	}

	@Override
	public String admUserUpdate() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String admProductForm() {
		// TODO Auto-generated method stub
		return "/adm/product/form";
	}

	@Override
	public String admProductInsert(ProductVO vo, Model model, MultipartFile file) throws IOException {
//		System.out.println("file.getName");
//		System.out.println(file.getName());
//		System.out.println("file.getSize");
//		System.out.println(file.getSize());
//		System.out.println("file.getOriginalFilename");
//		System.out.println(file.getOriginalFilename());
//		System.out.println("file.getBytes");
//		byte[] data = file.getBytes();
//		System.out.println(data);
//		System.out.println("file.getClass");
//		System.out.println(file.getClass());
//		System.out.println("file.getContentType");
//		System.out.println(file.getContentType());
//		System.out.println("file.getInputStream");
//		System.out.println(file.getInputStream());
//		System.out.println("file.getResource");
//		System.out.println(file.getResource());
		upload.saveFile(vo, file, model);
		System.out.println(vo.toString());
		productMapper.prdInsert(vo);
//		System.out.println(vo.toString());
		return "redirect:/adm/product/list.do";
	}
	@Override
	public String admProductList(ProductVO vo, Model model) {
		List<Map<String, Object>> result = productMapper.prdSelect(vo);
		model.addAttribute("admProductList", result);
		return "/adm/product/list";
	}
	@Override
	public String admPrdFormUpdate() {
		return null;
	}

	@Override
	public String admProductSelect(ProductVO vo, Model model) {
		// TODO Auto-generated method stub
		return null;
	}


}
