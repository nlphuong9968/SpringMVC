package com.nlphuong.controller;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nlphuong.entity.Employee;

@Controller
@RequestMapping("/")
public class homePageController {
	
	@Autowired
	SessionFactory sessionFactory;
	
	@GetMapping
	@Transactional
	public String Default(ModelMap modelMap) {
		
		Session session = sessionFactory.getCurrentSession();
		String sql = "from Employee";
		List<Employee> empList = session.createQuery(sql).getResultList();
		
		for (Employee emp : empList) {
			System.out.println("Name: " +emp.getName());
		}
		
		return "homePage";
	}
		
}
