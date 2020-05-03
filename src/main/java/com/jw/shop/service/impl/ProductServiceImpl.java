package com.jw.shop.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

import com.jw.shop.domain.CartVO;
import com.jw.shop.domain.ProductVO;
import com.jw.shop.domain.UserVO;
import com.jw.shop.mapper.CartMapper;
import com.jw.shop.mapper.ProductMapper;
import com.jw.shop.service.ProductService;
import com.jw.shop.util.Paging;


@Service
public class ProductServiceImpl implements ProductService {

	
	private final ProductMapper prdMapper;
	private final CartMapper cartMapper;
	
	public ProductServiceImpl(ProductMapper prdMapper, CartMapper cartMapper) {
		this.prdMapper = prdMapper; 
		this.cartMapper = cartMapper;
	}


	@Override
	public String prdSelect(@RequestParam String cateCode, @RequestParam int curPage, ProductVO vo, Model model) {
		if(cateCode == null) {
			return "/index";
		} else {
			vo.setCateCode(cateCode);	
			// 전체리스트 개수
	        int listCnt = prdMapper.prdSelectCnt(vo);
	        Paging paging = new Paging(listCnt, curPage);
	        vo.setStartIndex(paging.getStartIndex());
	        vo.setCntPerPage(paging.getPageSize());
			List<Map<String, Object>> result = prdMapper.prdSelectCATE(vo);
			model.addAttribute("cate", vo.getCateCode());
			model.addAttribute("result", result);
			model.addAttribute("listCnt", listCnt);
			model.addAttribute("paging", paging);
			return "/product/list";
		}
	}
	
	@Override
	public String prdView(@RequestParam String prdNum, ProductVO vo, Model model) {
		// vo.setPrdNum(prdNum);
		ProductVO result = prdMapper.prdView(vo);
		String[] slice, slice2 = null;
		if(result.getPrdSize() != null || result.getPrdColor() != null ) {
			slice = result.getPrdSize().split(",");
			slice2 = result.getPrdColor().split(",");
			model.addAttribute("size", slice);
			model.addAttribute("color", slice2);
		}
		model.addAttribute("view", result);
		return "/product/view";
	}
	
	@Override
	public String buy(UserVO uvo, ProductVO vo, CartVO cvo, Model model, HttpSession session) {
		// TODO Auto-generated method stub
		UserVO userSession = (UserVO) session.getAttribute("shopMember");
		ProductVO result = prdMapper.prdView(vo);
		if(userSession != null) {
			cvo.setShop_id(userSession.getShop_id());
			model.addAttribute("userInfo", userSession);
			model.addAttribute("result", result);
			return "/buy/buy";
		} else {
			model.addAttribute("buyMessage", "로그인 후 이용가능 합니다.");
			return "/user/login";
		}
	}
	

	@Override
	public void prdDelete() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void prdUpdate() {
		// TODO Auto-generated method stub
		
	}


	@Override
	public String search(String search, ProductVO vo, Model model) {
		// TODO Auto-generated method stub
		return null;
	}
	


	







	
	

	
}
