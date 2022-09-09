package com.mungdori.mapper;

import org.apache.ibatis.annotations.Param;

import com.mungdori.domain.UserDTO;

public interface UserMapper {
	int join(UserDTO user);

	UserDTO login(@Param("userid")String userid, @Param("userpw")String userpw);
}
