package com.nlphuong.controller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.nlphuong.entity.ChiTietHoaDon;
import com.nlphuong.entity.ChiTietHoaDonId;
import com.nlphuong.entity.HoaDon;
import com.nlphuong.entity.ShoppingCart;
import com.nlphuong.service.CTHoaDonService;
import com.nlphuong.service.HoaDonService;

@Controller
@RequestMapping("/shoppingCart")
@SessionAttributes("cart")
public class ShoppingCartController {

	@Autowired
	HoaDonService hoaDonService;
	
	@Autowired
	CTHoaDonService ctHoaDonService;

	@GetMapping
	public String Default(HttpSession httpSession, ModelMap map) {
		if(httpSession.getAttribute("cart") != null) {
			List<ShoppingCart> lstCarts = (List<ShoppingCart>) httpSession.getAttribute("cart");
			map.addAttribute("quantityPro", lstCarts.size());
			map.addAttribute("lstCarts", lstCarts);
		}
		
		return "shoppingCart";
	}

	@PostMapping
	public String addBill(HttpSession httpSession, @RequestParam String tenkhachhang, @RequestParam String sodt,
			@RequestParam String diachigiaohang, @RequestParam String hinhthucgiaohang, @RequestParam String ghichu) {
		
		if (httpSession.getAttribute("cart") != null) {
			List<ShoppingCart> lstCarts = (List<ShoppingCart>) httpSession.getAttribute("cart");

			HoaDon hoaDon = new HoaDon();
			hoaDon.setTenkhachhang(tenkhachhang);
			hoaDon.setSodt(sodt);
			hoaDon.setDiachigiaohang(diachigiaohang);
			hoaDon.setHinhthucgiaohang(hinhthucgiaohang);
			hoaDon.setGhichu(ghichu);
			
			int idHoaDon = hoaDonService.addBill(hoaDon);
			if (idHoaDon > 0) {
				Set<ChiTietHoaDon> chiTietHoaDons = new HashSet<>();
				for (ShoppingCart cart : lstCarts) {
					ChiTietHoaDonId chiTietHoaDonId = new ChiTietHoaDonId();
					chiTietHoaDonId.setMachitietsanpham(cart.getMachitietsp());
					chiTietHoaDonId.setMahoadon(hoaDon.getMahoadon());
					ChiTietHoaDon chiTietHoaDon = new ChiTietHoaDon();
					chiTietHoaDon.setChiTietHoaDonId(chiTietHoaDonId);
					chiTietHoaDon.setGiatien(cart.getGiatien());
					chiTietHoaDon.setSoluong(cart.getSoluongCart());
					
					ctHoaDonService.addCTHoaDon(chiTietHoaDon);
				}
				System.out.println("success");
			} else {
				System.out.println("fail");
			}

//			hoaDon.setChiTietHoaDons(chiTietHoaDons);
			
		}

		return "shoppingCart";
	}
}
