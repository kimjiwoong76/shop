package com.jw.shop.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import com.jw.shop.domain.BoardVO;
import com.jw.shop.mapper.BoardMapper;
import com.jw.shop.mapper.UserMapper;
import com.jw.shop.service.BoardService;


@Service
public class BoardServiceImple implements BoardService {

	
	private final BoardMapper boardMapper;
	private final UserMapper userMapper;
	
	public BoardServiceImple(BoardMapper boardMapper, UserMapper userMapper) {
		this.boardMapper = boardMapper;
		this.userMapper = userMapper;
	}
	
	
	@Override
	public ModelAndView b_select(BoardVO vo, Model model) {
		System.out.println("2");
		List<Map<String, Object>> result = boardMapper.b_select(vo);
//		model.addAttribute("list", result);
		return new ModelAndView("/board/list", "list", result);
	}

	@Override
	public String b_insert(BoardVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String b_oneSelect(BoardVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String b_delete(BoardVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

}
