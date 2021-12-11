package com.jth.exercise.board.dao;

import java.util.List;

import com.jth.exercise.board.vo.UserVO;

public interface UserDAO {
			
	List<UserVO> selectUserList();
	
}
