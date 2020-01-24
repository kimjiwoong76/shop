package com.jw.shop.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FormFileContorller {
	
	private static final String UPLOAD_PATH = "C:\\jsp\\spring\\spring_project\\jw\\src\\main\\webapp\\resources\\upload";
	private static final String SERVER_PATH = "/resources/upload/";
	
	@RequestMapping(value="/formFile.do", method = RequestMethod.POST)
	public ModelAndView formFile(MultipartFile file1, ModelAndView mav) {
		saveFile(file1, mav);
		mav.setViewName("/register/test");
		return mav;
	}
	
	@RequestMapping("/register/test")
	public String testPage() {
		return "redirect:/register/test";
	}
	


	private void saveFile(MultipartFile file1, ModelAndView mav) {
		// TODO Auto-generated method stub
		UUID uuid = UUID.randomUUID();
		String saveName = uuid + "_" + file1.getOriginalFilename();
		String server_path = SERVER_PATH + saveName;
		mav.addObject("img_url", server_path);
		File saveFile = new File(UPLOAD_PATH, saveName);
		try {
	        file1.transferTo(saveFile); // 업로드 파일에 saveFile이라는 껍데기 입힘
	        System.out.println("<script>alert('파일 저장 성공')</script>");
	    } catch (IOException e) {
	    	System.out.println("<script>alert('파일 저장 실패')</script>");
	        e.printStackTrace();
	    }
	}
	
}
