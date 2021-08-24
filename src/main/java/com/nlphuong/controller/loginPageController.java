package com.nlphuong.controller;


import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("login/")
//@SessionAttributes("email")
public class loginPageController {
	
	@Autowired
	SessionFactory sessionFactory;

	@GetMapping
	public String Default(@SessionAttribute("email") String email) {
		System.out.println(email);
		return "loginPage";
	}
	
}
