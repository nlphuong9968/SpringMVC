package com.nlphuong.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/")
public class homePageController {
	
	@GetMapping
	public String Default(ModelMap modelMap) {
		
		modelMap.addAttribute("name", "admin");
		modelMap.addAttribute("age", 18);
		
		return "homePage";
	}
		
}
