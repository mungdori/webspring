package com.mungdori.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mungdori.domain.checkDTO;
import com.mungdori.mapper.CheckMapper;

import lombok.Setter;

@Service
public class checkServiceImpl implements checkService {

	@Setter(onMethod_ = @Autowired)
	private CheckMapper mapper;

	@Override
	public boolean checkid(checkDTO check) {

		return mapper.checkId(check) == 1;
	}

	@Override
	public boolean checkemail(checkDTO check) {
		return mapper.checkEmail(check) == 1;
	}
}
