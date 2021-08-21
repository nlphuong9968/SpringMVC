package com.nlphuong.controller;


import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("login/")
public class loginPageController {
	
	@Autowired
	SessionFactory sessionFactory;

	@GetMapping
	public String Default() {
		return "loginPage";
	}
	
}
