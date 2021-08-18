package com.nlphuong.controller;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nlphuong.entity.Employee;
import com.nlphuong.entity.Product;

@Controller
@RequestMapping("/")
public class homePageController {
	
	@Autowired
	SessionFactory sessionFactory;
	
	@GetMapping
	@Transactional
	public String Default(ModelMap modelMap) {
		
		Session session = sessionFactory.getCurrentSession();
		
		Product product = new Product();
		product.setNamePro("chicken");
		product.setPrice("100.000 VND");
		
		Employee emp = new Employee();
		emp.setName("nguyen phuong");
		emp.setAge(19);
		
		product.setEmployee(emp);
		
		session.save(product);
		
		return "homePage";
	}
	
	
		
}
