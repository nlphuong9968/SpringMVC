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
import org.springframework.web.bind.annotation.SessionAttributes;

import com.nlphuong.entity.DanhMucSanPham;
import com.nlphuong.entity.SanPham;
import com.nlphuong.entity.ShoppingCart;
import com.nlphuong.service.DanhMucSPService;
import com.nlphuong.service.SanPhamService;

@Controller
@RequestMapping("/")
@SessionAttributes("cart")
public class homePageController {
	
	@Autowired
	SanPhamService sanPhamService;
	
	@Autowired
	DanhMucSPService danhMucSPService;
	
	@GetMapping
	@Transactional
	public String Default(ModelMap modelMap, HttpSession httpSession) {
		List<DanhMucSanPham> mucSanPhams = danhMucSPService.getDanhMucSP();
		String email = (String) httpSession.getAttribute("email");
		if(email != null) {
			Character firstChar = email.charAt(0);
			modelMap.addAttribute("firstChar", firstChar);
		}
		
		if(httpSession.getAttribute("cart") != null) {
			List<ShoppingCart> lisCarts = (List<ShoppingCart>) httpSession.getAttribute("cart");
			modelMap.addAttribute("quantityPro", lisCarts.size());
		}
		
		List<SanPham> sanPhams = sanPhamService.getListProductLimit(0);
		
		modelMap.addAttribute("lstSanPham", sanPhams);
		modelMap.addAttribute("danhmuc", mucSanPhams);
		
		return "homePage";
	}
		
}
