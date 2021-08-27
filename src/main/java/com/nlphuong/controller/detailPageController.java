package com.nlphuong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nlphuong.entity.SanPham;
import com.nlphuong.service.SanPhamService;

@Controller
@RequestMapping("/detail")
public class detailPageController {

	@Autowired
	SanPhamService sanPhamService;
	
	@GetMapping("/{masanpham}")
	public String Default(@PathVariable int masanpham, ModelMap map) {
		
		SanPham sanPham = sanPhamService.getProductDetailByMaSP(masanpham);
		
		map.addAttribute("sanPham", sanPham);
		
		return "detailPage";
	}

	
}
