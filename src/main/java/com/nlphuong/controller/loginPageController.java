package com.nlphuong.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("login/")
public class loginPageController {

	@GetMapping
	public String Default() {
		return "loginPage";
	}
	
	@PostMapping
	public String loginProcess(@RequestParam String username, @RequestParam String password) {
		if(username.equals("admin") && password.equals("123456")) {
			
			return "redirect:/";
		}else {
			
			return "loginPage";
		}
	}
}
