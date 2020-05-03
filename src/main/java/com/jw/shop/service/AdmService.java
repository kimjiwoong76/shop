package com.jw.shop.service;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.jw.shop.domain.BuyVO;
import com.jw.shop.domain.ProductVO;
import com.jw.shop.domain.UserVO;

public interface AdmService {
	
	
	//관리자페이지 인덱스
	String admIndex(HttpSession session,HttpServletResponse response, BuyVO vo, Model model, int curPage) throws IOException;
	
	//회원정보
	String admUserList(UserVO vo, Model model);
	
	//회원정보 수정
	String admUserUpdate();
	
	
	//상품 관리
	
	//상품입력 페이지
	String admProductForm();
	String admPrdFormUpdate(@RequestParam String prdNum, ProductVO vo, Model model) throws IOException;
	//상품입력
	String admProductInsert(ProductVO vo, Model model, MultipartHttpServletRequest file) throws IOException;
	String admPrdFormUpdateProc(ProductVO vo, Model model, MultipartHttpServletRequest file) throws IOException;
	//상품 리스트
	String admProductList(ProductVO vo, Model model);
	
	
	//상품목록
	String admProductSelect(ProductVO vo, Model model);
	
	//상품삭제
	String admProductDelete(ProductVO vo);




	
	
}
