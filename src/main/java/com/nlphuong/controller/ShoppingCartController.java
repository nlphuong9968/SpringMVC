package com.nlphuong.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.nlphuong.entity.ShoppingCart;

@Controller
@RequestMapping("/shoppingCart")
@SessionAttributes("cart")
public class ShoppingCartController {
	
	@GetMapping
	public String Default(HttpSession httpSession, ModelMap map) {
		if(httpSession.getAttribute("cart") != null) {
			List<ShoppingCart> lstCarts = (List<ShoppingCart>) httpSession.getAttribute("cart");
			map.addAttribute("quantityPro", lstCarts.size());
			map.addAttribute("lstCarts", lstCarts);
		}
		return "shoppingCart";
	}
}
