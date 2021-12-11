package com.jth.exercise.board.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.jth.exercise.board.dao.UserDAO;
import com.jth.exercise.board.service.UserService;
import com.jth.exercise.board.vo.UserVO;

@Service
public class UserServiceImpl implements UserService {

	@Override
	public List<UserVO> selectUserList() throws Exception{
		return UserDAO.selectUserList();
	}
	
}
