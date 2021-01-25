package com.jw.shop.service.impl;

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
	public String buyProc(BuyVO vo, Model model, String amount, String buy_name) throws Exception {
		System.out.println(vo.toString());
		vo.setBuy_price(amount);
		vo.setBuy_name(buy_name);
		try {
			int result = buyMapper.buyIns(vo);
			if(result == 1) {
				return "/buy/success";
			} else {
				return "/buy/fail";
			}
		} catch(Exception e) {
			e.printStackTrace();
			return "/buy/fail";
		}
	}

}
