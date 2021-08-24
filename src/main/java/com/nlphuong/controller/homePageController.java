package com.nlphuong.controller;

import javax.servlet.http.HttpSession;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

@Controller
@RequestMapping("/")
public class homePageController {
	
	@Autowired
	SessionFactory sessionFactory;
	
	@GetMapping
	@Transactional
	public String Default(ModelMap modelMap, HttpSession httpSession) {
		if(httpSession.getAttribute("email") != null) {
			String email = (String) httpSession.getAttribute("email");
			String firstChar = email.substring(0,1);
			modelMap.addAttribute("firstChar", firstChar);
		}
		
		return "homePage";
	}
		
}
