package com.jth.exercise.board.service;

import java.util.List;

import com.jth.exercise.board.vo.UserVO;



public interface UserService {

	public List<UserVO> selectUserList() throws Exception;
}
