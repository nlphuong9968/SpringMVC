package com.nlphuong.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nlphuong.entity.Employee;

@Controller
@RequestMapping("/detail")
public class detailPageController {

	@GetMapping
	public String Default() {
		
		return "detailPage";
	}
	
	@PostMapping
	public String displayInfoUser(@ModelAttribute Employee emp, ModelMap modelMap) {
		
		modelMap.addAttribute("emp", emp);
		return "detailPage";
	}
	
}
