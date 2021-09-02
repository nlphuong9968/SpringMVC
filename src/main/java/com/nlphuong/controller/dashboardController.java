package com.nlphuong.controller;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/dashboard")
public class dashboardController {

	@GetMapping
	public String Default() {
		
		return "dashboard";
	}
}
