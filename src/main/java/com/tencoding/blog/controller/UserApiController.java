package com.tencoding.blog.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.tencoding.blog.dto.ResponseDto;
import com.tencoding.blog.model.User;
import com.tencoding.blog.service.UserService;

@RestController
public class UserApiController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private HttpSession httpSession;

	//  /blog/api/user
	@PostMapping("/api/user")
	public ResponseDto<Integer> save(@RequestBody User user) {
		int result = userService.saveUser(user);
		return new ResponseDto<Integer>(HttpStatus.OK.value(), result);
	}

	@PostMapping("/api/user/login")
	public ResponseDto<Integer> login(@RequestBody User user) {
		User principal = userService.login(user);
		if(principal != null) {
			httpSession.setAttribute("principal", principal);				
			return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
		} 
		else {
			principal = null;
			return null;
		}
		
	}

	
	
}
