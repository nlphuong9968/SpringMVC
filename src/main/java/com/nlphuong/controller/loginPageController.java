package com.nlphuong.controller;


import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.nlphuong.entity.NhanVien;
import com.nlphuong.service.NhanVienService;

@Controller
@RequestMapping("login/")
public class loginPageController {
	
	@Autowired
	NhanVienService nhanVienService;

	@GetMapping
	public String Default() {
		
		return "loginPage";
	}
	
	@PostMapping
	public String register(@RequestParam String email, @RequestParam String password, @RequestParam String confPassword, ModelMap map) {
		
		boolean checkMail =  validate(email);
		
		if(checkMail) {
			if(password.equals(confPassword)) {
				NhanVien nhanVien = new NhanVien();
				
				nhanVien.setEmail(email);
				nhanVien.setTendangnhap(email);
				nhanVien.setMatkhau(password);
				
				boolean flagAdd = nhanVienService.addNhanVien(nhanVien);
				
				if(flagAdd) {
					map.addAttribute("checkAddNhanvien", "Tạo tài khoản thành công ");
				}else {
					map.addAttribute("checkAddNhanvien", "Tạo tài khoản  ");
				}
			}else {
				map.addAttribute("checkAddNhanvien", "Password không khớp");
			}
		}else {
			map.addAttribute("checkAddNhanvien", "Vui lòng nhập đúng định dạng email ");
		}
		
		return "loginPage";
	}
	
	public static final Pattern VALID_EMAIL_ADDRESS_REGEX = Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$",
			Pattern.CASE_INSENSITIVE);

	public static boolean validate(String emailStr) {
		Matcher matcher = VALID_EMAIL_ADDRESS_REGEX.matcher(emailStr);
		return matcher.find();
	}
	
}
