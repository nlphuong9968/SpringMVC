package com.nlphuong.controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nlphuong.entity.NhanVien;

@Controller
@RequestMapping("login/")
public class loginPageController {
	
	@Autowired
	SessionFactory sessionFactory;

	@GetMapping
	public String Default() {
		return "loginPage";
	}
	
	@PostMapping
	@Transactional
	public String loginProcess(@RequestParam String username, @RequestParam String password) {

		Session session = sessionFactory.getCurrentSession();
		try {
			NhanVien nhanVien =  (NhanVien) session.createQuery(" FROM NHANVIEN WHERE tendangnhap = '"+ username 
													+ "' AND matkhau = '"+ password + "'").getSingleResult();
			if(nhanVien != null) {
				System.out.println("Login successfull");
			}
		}catch (Exception e) {
			System.out.println("Login fail!");
		}
		
		return "loginPage";
	}
}
