package com.jw.shop.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.jw.shop.domain.BuyVO;
import com.jw.shop.mapper.BuyMapper;
import com.jw.shop.service.BuyService;


@Service
public class BuyServiceImpl implements BuyService {

	private BuyMapper buyMapper;
	
	public BuyServiceImpl(BuyMapper buyMapper) {
		this.buyMapper = buyMapper;
	}
	
	@Override
	public String buyProc(BuyVO vo, Model model) throws Exception {
		System.out.println(vo.toString());
		int result = buyMapper.buyIns(vo);
		if(result == 1) {
			return "/buy/success";
		} else {
			return "/buy/fail";
		}
		
	}

}
