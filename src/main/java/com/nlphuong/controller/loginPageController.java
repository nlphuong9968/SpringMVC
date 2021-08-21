package com.nlphuong.controller;


import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nlphuong.service.NhanVienService;

@Controller
@RequestMapping("login/")
public class loginPageController {
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Autowired
	NhanVienService nhanVienService;

	@GetMapping
	public String Default() {
		return "loginPage";
	}
	
	@PostMapping
	@Transactional
	public String loginProcess(@RequestParam String email, @RequestParam String password) {
		
		boolean check = nhanVienService.checkLogin(email, password);
		if(check) {
			System.out.println("Login success");
		}else {
			System.out.println("Login fail!");
		}
		
		return "loginPage";
		
	}
}
