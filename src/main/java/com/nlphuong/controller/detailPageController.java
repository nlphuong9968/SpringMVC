package com.nlphuong.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.nlphuong.entity.DanhMucSanPham;
import com.nlphuong.entity.SanPham;
import com.nlphuong.entity.ShoppingCart;
import com.nlphuong.service.DanhMucSPService;
import com.nlphuong.service.SanPhamService;

@Controller
@RequestMapping("/detail")
@SessionAttributes("cart")
public class detailPageController {

	@Autowired
	SanPhamService sanPhamService;
	
	@Autowired
	DanhMucSPService danhMucSPService;
	
	@GetMapping("/{masanpham}")
	public String Default(@PathVariable int masanpham, ModelMap map, HttpSession httpSession) {
		
		SanPham sanPham = sanPhamService.getProductDetailByMaSP(masanpham);
		List<DanhMucSanPham> mucSanPhams = danhMucSPService.getDanhMucSP();
		if(httpSession.getAttribute("cart") != null) {
			List<ShoppingCart> lisCarts = (List<ShoppingCart>) httpSession.getAttribute("cart");
			map.addAttribute("quantityPro", lisCarts.size());
		}
		
		map.addAttribute("sanPham", sanPham);
		map.addAttribute("danhmuc", mucSanPhams);
				
		return "detailPage";
	}

	
}
