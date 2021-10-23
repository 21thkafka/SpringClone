package com.jth.exercise.board.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.jth.exercise.board.dao.BoardDAO;
import com.jth.exercise.board.service.BoardService;
import com.jth.exercise.board.vo.BoardVO;

public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDAO boardDAO;
	
	@Override
	public int insertBoard(BoardVO boardVO) throws Exception {
		
		return boardDAO.insertBoard(boardVO);
	}

}
