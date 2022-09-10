package com.mungdori.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.mungdori.domain.checkDTO;
import com.mungdori.service.checkService;

import lombok.Setter;


@RestController
@RequestMapping("/check/*")
public class FindController {
	@Setter(onMethod_ = @Autowired)
	private checkService service;
	
	@PostMapping(value="/id", consumes="application/json")
	public boolean checkid(@RequestBody checkDTO check) {
		System.out.println(check);
		boolean checkid =service.checkid(check);
		
		System.out.println(checkid);
		return checkid ? true:false;
	}
	
	
}
