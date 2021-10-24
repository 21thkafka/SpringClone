package com.jth.exercise.board.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jth.exercise.board.dao.BoardDAO;
import com.jth.exercise.board.service.BoardService;
import com.jth.exercise.board.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDAO boardDAO;
	
	@Override
	public int insertBoard(BoardVO boardVO) throws Exception {
		
		return boardDAO.insertBoard(boardVO);
	}

	@Override
	public List<BoardVO> selectBoardList() throws Exception {		
		return boardDAO.selectBoardList();
	}

}
