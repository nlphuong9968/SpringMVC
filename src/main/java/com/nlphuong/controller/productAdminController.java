package com.nlphuong.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nlphuong.entity.DanhMucSanPham;
import com.nlphuong.entity.SanPham;
import com.nlphuong.service.DanhMucSPService;
import com.nlphuong.service.SanPhamService;

@Controller
@RequestMapping("addProduct")
public class productAdminController {
	
	@Autowired
	SanPhamService sanPhamService;
	
	@Autowired
	DanhMucSPService danhMucSPService;

	@GetMapping
	public String Default(ModelMap modelMap) {
		
		List<SanPham> sanPhams = sanPhamService.getListProductLimit(0);
		
		List<SanPham> allSanPhams = sanPhamService.getListProductLimit(-1);
		
		List<DanhMucSanPham> mucSanPhams = danhMucSPService.getDanhMucSP();
		
		double sumPages = Math.ceil((double) allSanPhams.size()/3);
		
		modelMap.addAttribute("lstSanPham", sanPhams);
		modelMap.addAttribute("sumPages", sumPages);
		modelMap.addAttribute("danhmuc", mucSanPhams);
		
		return "addProduct";
	}
}
