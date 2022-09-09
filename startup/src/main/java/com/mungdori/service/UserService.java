package com.mungdori.service;

import com.mungdori.domain.UserDTO;

public interface UserService {
	boolean join(UserDTO user);

	UserDTO login(String userid, String userpw);
}
