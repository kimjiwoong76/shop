package com.jw.shop.service;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

import com.jw.shop.domain.ProductVO;

public interface RestService {

	
	String RestServiceList(int no, int curPage);
}
