package com.nlphuong.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nlphuong.entity.Employee;


@Controller
@RequestMapping("/")
public class homePageController {
	
	@GetMapping
	public String Default(ModelMap modelMap) {
		
		List<Employee> empList = new ArrayList<Employee>();
		
		Employee emp = new Employee();
		emp.setName("Nguyen Linh Phuong");
		emp.setAge(18);
		empList.add(emp);
		
		Employee emp1 = new Employee();
		emp1.setName("Nguyen Phuong");
		emp1.setAge(26);
		empList.add(emp1);	
		
		modelMap.addAttribute("name", "admin");
		modelMap.addAttribute("age", 18);
		modelMap.addAttribute("empList", empList);
		
		return "homePage";
	}
		
}
