package com.tencoding.blog.advice;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestController;

@ControllerAdvice
@RestController
public class ControllerExceptionAdvice {

	@ExceptionHandler(value = Exception.class)
	public String Exception(Exception e) {
		System.out.println("오류 발생");
		return e.getMessage();
	}
	
	
}
