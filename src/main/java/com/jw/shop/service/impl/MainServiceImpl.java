package com.jw.shop.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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
	public String index(ProductVO vo, Model model, HttpServletRequest req) {
		Map<String, Object> map = new HashMap<>();
		List<ProductVO> newItem = mainMapper.newItem(vo);
		List<ProductVO> girlItem = mainMapper.girlItem(vo);
		map.put("newItem", newItem);
		map.put("girlItem", girlItem);
		model.addAttribute("newItem", map);
		return "/index";
	}

	@Override
	public String search(ProductVO vo, Model model) {
		// 검색 구현
		List<ProductVO> searchItem = new ArrayList<>();
		int count;
		System.out.println(vo);
		if(vo.getPrdName() != null || vo.getPrdName() != "") {
			searchItem = mainMapper.searchItem(vo);
			count = searchItem.size();
		} else {
			count = 0;
		}
		model.addAttribute("searchList", searchItem);
		model.addAttribute("count", count);
		return "/product/search";
	}

}
