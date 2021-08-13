package com.nlphuong.controller;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nlphuong.entity.DatabaseFashion;



@Controller
@RequestMapping("/")
public class homePageController {
	
	@GetMapping
	public String Default(ModelMap modelMap) {
		
		ApplicationContext context = new ClassPathXmlApplicationContext("minishop-IoC.xml");
		
		DatabaseFashion databaseFashion = (DatabaseFashion) context.getBean("dbFashion");
		databaseFashion.getListEmployee();
		
		return "homePage";
	}
		
}
