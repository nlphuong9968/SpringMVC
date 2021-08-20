package com.nlphuong.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/detail")
public class detailPageController {

	@GetMapping
	public String Default() {
		
		return "detailPage";
	}

	
}
