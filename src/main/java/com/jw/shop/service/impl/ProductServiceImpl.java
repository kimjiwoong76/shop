package com.jw.shop.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

import com.jw.shop.domain.ProductVO;
import com.jw.shop.mapper.ProductMapper;
import com.jw.shop.service.ProductService;


@Service
public class ProductServiceImpl implements ProductService {

	
	private final ProductMapper prdMapper;
	
	public ProductServiceImpl(ProductMapper prdMapper) {
		this.prdMapper = prdMapper; 
	}


	@Override
	public String prdSelect(@RequestParam String cateCode, ProductVO vo, Model model) {
		if(cateCode == null) {
			return "/index";
		} else {
			vo.setCateCode(cateCode);			
			List<Map<String, Object>> result = prdMapper.prdSelectCATE(vo);
			model.addAttribute("result", result);
			return "/product/list";
		}
	}
	
	@Override
	public String prdView(String prdNum, ProductVO vo, Model model) {
		// vo.setPrdNum(prdNum);
		ProductVO result = prdMapper.prdView(vo);
		String[] slice, slice2 = null;
		slice = result.getPrdSize().split(",");
		slice2 = result.getPrdColor().split(",");
		model.addAttribute("view", result);
		model.addAttribute("size", slice);
		model.addAttribute("color", slice2);
		return "/product/view";
	}
	
	@Override
	public String prdSelectOne(@RequestParam String prdNum, ProductVO vo, Model model) {
		return "";
	}

	@Override
	public void prdDelete() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void prdUpdate() {
		// TODO Auto-generated method stub
		
	}



	
	

	
}
