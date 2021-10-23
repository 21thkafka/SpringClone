package com.jth.exercise.board.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jth.exercise.board.dao.BoardDAO;
import com.jth.exercise.board.vo.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	private SqlSession session;
	
	//BoardMapper.xml에 있는 namespace 주소 복붙
	private String namespace = "com.jth.exercise.board.mapper";
	
	@Override
	public int insertBoard(BoardVO boardVO) {
		
		//BoardMapper.xml에 있는 쿼리 태그 id
		return session.insert(namespace + "insertBoard", boardVO);
	}

}
