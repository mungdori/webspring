package com.mungdori.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mungdori.domain.UserDTO;
import com.mungdori.mapper.UserMapper;

import lombok.Setter;

@Service
public class UserServiceImpl implements UserService {
	@Setter(onMethod_ = @Autowired)
	private UserMapper mapper;

	@Override
	public boolean join(UserDTO user) {
		return mapper.join(user) == 1;
	}
	@Override
	public UserDTO login(String userid, String userpw) {
		UserDTO loginUser = mapper.login(userid, userpw);
		return loginUser;
	}
}
