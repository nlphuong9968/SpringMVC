package com.nlphuong.controller;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
		//Update data
		//cach 1
		
//		Employee emp = new Employee("sam", 30);
//		
//		emp.setIdEmp(5);
//		
//		emp.setName("John");
//		emp.setAge(29);
//		
//		session.update(emp);
		
		//cach 2
//		Employee emp = (Employee) session.createQuery(" from Employee Where idEmp = 5").uniqueResult();
//		
//		emp.setName("Josh");
//		
//		session.update(emp);
		
		//cach 3 with condition is ID
		Employee emp = (Employee) session.get(Employee.class, 5);
		
		emp.setName("John");
		
		session.update(emp);
		
		return "homePage";
	}
	
	
		
}
