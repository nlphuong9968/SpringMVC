package com.nlphuong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.nlphuong.service.NhanVienService;

@Controller
@RequestMapping("api/")
@SessionAttributes("email")
public class ApiController {

	@Autowired
	NhanVienService nhanVienService;
	
	@GetMapping("CheckLogin")
	@ResponseBody
	public String checkLogin(@RequestParam String email, @RequestParam String password, ModelMap modelMap) {

		boolean check = nhanVienService.checkLogin(email, password);
		modelMap.addAttribute("email", email);
		
		return ""+check;
	}
}
