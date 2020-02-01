package com.jw.shop.controller;

import java.io.FileInputStream;
import java.io.IOException;

import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.jw.shop.util.Upload;

@Controller
public class FormFileContorller {

	private final Upload upLoad;
	
	public FormFileContorller(Upload upLoad) {
		this.upLoad = upLoad;
	}
	
//	@RequestMapping(value="/formFile.do")
//	public void formFile(MultipartFile file, Model model) {
//		upLoad.saveFile(null, file, model);
//	}
	
//	@ResponseBody
//	@RequestMapping(value = "/getFile.do", produces = "image/jpg", method = RequestMethod.GET)
//	public byte[] getFile(String fileName) throws IOException {
//		try(FileInputStream fis= new FileInputStream(UPLOAD_PATH+"/"+fileName)){
//			return IOUtils.toByteArray(fis);
//		}
//	}
	
	@RequestMapping("/user/test")
	public String testPage() {
		return "redirect:/user/test";
	}
	
}
