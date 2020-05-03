package com.jw.shop.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.jw.shop.domain.ProductVO;
import com.jw.shop.mapper.MainMapper;
import com.jw.shop.service.MainService;

@Service
public class MainServiceImpl implements MainService {

	@Autowired
	private MainMapper mainMapper;
	
//	public MainServiceImpl(MainMapper mainMapper){
//		this.mainMapper = mainMapper;
//	}
	
	@Override
	public String index(ProductVO vo, Model model) {
		Map<String, Object> map = new HashMap<>();
		List<ProductVO> newItem = mainMapper.newItem(vo);
		List<ProductVO> girlItem = mainMapper.girlItem(vo);
		map.put("newItem", newItem);
		map.put("girlItem", girlItem);
		model.addAttribute("newItem", map);
		return "/index";
	}

}
