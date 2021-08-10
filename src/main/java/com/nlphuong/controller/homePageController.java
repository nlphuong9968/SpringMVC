package com.nlphuong.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/")
public class homePageController {
	
	@GetMapping
	public String Default() {
		
		return "homePage";
	}
	
	@GetMapping("/{name}")
	public String receiveParam(@PathVariable String name, ModelMap modelMap) {
		
		modelMap.addAttribute("name", name);
		
		return "homePage";
	}
}
