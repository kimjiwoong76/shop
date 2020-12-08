package com.jw.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.jw.shop.domain.BoardVO;
import com.jw.shop.service.BoardService;


@RestController
@RequestMapping("/board")
public class BoardController {

	private final BoardService boardService;
	
	public BoardController(BoardService boardService) {
		this.boardService = boardService;
	}
	
	
	@RequestMapping("/list")
	public ModelAndView b_select(BoardVO vo, Model model) {
		System.out.println("1");
		return boardService.b_select(vo, model);
//		return "hello world";
	}
	
}
