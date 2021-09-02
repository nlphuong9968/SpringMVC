package com.nlphuong.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nlphuong.entity.SanPham;
import com.nlphuong.service.SanPhamService;

@Controller
@RequestMapping("addProduct")
public class productAdminController {
	
	@Autowired
	SanPhamService sanPhamService;

	@GetMapping
	public String Default(ModelMap modelMap) {
		
		List<SanPham> sanPhams = sanPhamService.getListProductLimit(0);
		
		List<SanPham> allSanPhams = sanPhamService.getListProductLimit(-1);
		
		double sumPages = Math.ceil((double) allSanPhams.size()/3);
		
		modelMap.addAttribute("lstSanPham", sanPhams);
		modelMap.addAttribute("sumPages", sumPages);
		
		return "addProduct";
	}
}
