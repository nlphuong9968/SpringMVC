package com.nlphuong.controller;


import java.util.HashSet;
import java.util.Set;

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
//		many product to one employee
/*		Product product = new Product();
		product.setNamePro("Bread");
		product.setPrice("20.000 VND");
		
		Product product1 = new Product();
		product1.setNamePro("Soup");
		product1.setPrice("50.000 VND");
		
		Product product2 = new Product();
		product2.setNamePro("Buger");
		product2.setPrice("60.000 VND");
		
		Set<Product> products = new HashSet<Product>();
		products.add(product);
		products.add(product1);
		products.add(product2);
		
		Employee emp = new Employee();
		emp.setName("minh1");
		emp.setAge(19);
		emp.setProducts(products);
		
		session.save(emp);

*/
//		many employee to one product
		Product product = new Product();
		product.setNamePro("Cake");
		product.setPrice("20.000 VND");
		
		Employee emp = new Employee();
		emp.setName("A");
		emp.setAge(10);
		
		Employee emp1 = new Employee();
		emp1.setName("B");
		emp1.setAge(11);
		
		Employee emp2 = new Employee();
		emp2.setName("C");
		emp2.setAge(12);
		
		Set<Employee> employees = new HashSet<Employee>();
		employees.add(emp);
		employees.add(emp1);
		employees.add(emp2);
		
		product.setEmployees(employees);
		
		session.save(product);
		
		return "homePage";
	}
	
	
		
}
