package com.jw.shop.service;

import org.springframework.ui.Model;

import com.jw.shop.domain.BuyVO;

public interface BuyService {
	
	String buyProc(BuyVO vo, Model model) throws Exception;
}
