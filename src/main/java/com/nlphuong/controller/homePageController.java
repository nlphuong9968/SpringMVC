package com.nlphuong.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.nlphuong.entity.SanPham;
import com.nlphuong.service.SanPhamService;

@Controller
@RequestMapping("/")
public class homePageController {
	
	@Autowired
	SanPhamService sanPhamService;
	
	@GetMapping
	@Transactional
	public String Default(ModelMap modelMap, HttpSession httpSession) {
		String email = (String) httpSession.getAttribute("email");
		if(email != null) {
			Character firstChar = email.charAt(0);
			modelMap.addAttribute("firstChar", firstChar);
		}
		
		List<SanPham> sanPhams = sanPhamService.getListProductLimit(0);
		
		modelMap.addAttribute("lstSanPham", sanPhams);
		
		return "homePage";
	}
		
}
