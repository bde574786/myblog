package com.tencoding.blog.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tencoding.blog.dto.ResponseDto;
import com.tencoding.blog.model.User;
import com.tencoding.blog.service.UserService;

@Controller
public class UserController {

	@Autowired
	private HttpSession httpSession;
	
	
	@GetMapping({"/", ""})
	public String home() {
		return "home";
	}
	
	
//	@PostMapping("/blog/user")
//	public ResponseDto<Integer> save(@RequestBody User user) {
//		// DB (벨리데이션)
//		System.out.println("UserApiController 호출됨!!!");
//	
//		int result = userService.saveUser(user);
//		return new ResponseDto<Integer>(HttpStatus.OK.value(), result);
//	}
	
	@GetMapping("/user/login")
	public String loginForm() {
		System.out.println("login");
		return "user/login_form";
	}
	
	
	@GetMapping("/user/join")
	public String joinForm() {
		System.out.println("join");
		return "user/join_form";
	}
	

	@GetMapping("/writing")
		public String writingForm() {
			System.out.println("writing");
			return "writing";
		}
	
	
	
	@GetMapping("/user/logout")
	public String logout() {
		System.out.println("logout");
		httpSession.invalidate();
		return "redirect:/";
	}
	
	
}
