package com.jth.exercise.board.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.jth.exercise.board.vo.BoardVO;

@Controller
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@GetMapping("/board/register")
	public String boardRegister(Model model) throws Exception {
		
		logger.info("BoardController, boardRegister.");
		
		return "board/register";
	}
	
	@PostMapping("/board/register")
	public String boardRegisterPost(BoardVO boardVO) throws Exception {
		
		logger.info("BoardController, boardRegisterPost.");
		
		return "board/result";
	}
}
