package com.jw.shop.service;

import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import com.jw.shop.domain.BoardVO;

public interface BoardService {

	//게시판 리스트 가져오기
	ModelAndView b_select(BoardVO vo, Model model);
	
	//게시글 작성하기
	String b_insert(BoardVO vo);
	
	//게시글 상세보기
	String b_oneSelect(BoardVO vo);
	
	//게시글 삭제하기
	String b_delete(BoardVO vo);
	
	
}
