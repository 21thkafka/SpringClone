package com.jth.exercise.board.service;

import java.util.List;

import com.jth.exercise.board.vo.BoardVO;

public interface BoardService {

	public int insertBoard(BoardVO boardVO) throws Exception;
	
	public List<BoardVO> selectBoardList() throws Exception;
}
