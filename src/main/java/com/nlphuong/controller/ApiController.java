package com.nlphuong.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.nlphuong.entity.ShoppingCart;
import com.nlphuong.service.NhanVienService;

@Controller
@RequestMapping("api/")
@SessionAttributes({"email", "cart"})
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
	
	@GetMapping("AddShoppingCart")
	@ResponseBody
	public void addShoppingCart(@ModelAttribute ShoppingCart cart, HttpSession httpSession) {
		if(httpSession.getAttribute("cart") == null) {
			List<ShoppingCart> carts = new ArrayList<>();
			cart.setSoluong(1);
			carts.add(cart);
			httpSession.setAttribute("cart", carts);
			List<ShoppingCart> lisCarts = (List<ShoppingCart>) httpSession.getAttribute("cart");
			System.out.println(lisCarts.size());
		}else {
			int position = checkDuplicateProductCart(httpSession, cart.getMasp(), cart.getMamau(), cart.getMasize());
			if(position == -1) {
				List<ShoppingCart> lisCarts = (List<ShoppingCart>) httpSession.getAttribute("cart");
				cart.setSoluong(1);
				lisCarts.add(cart);
			}else {
				List<ShoppingCart> lisCarts = (List<ShoppingCart>) httpSession.getAttribute("cart");
				int soluongmoi = lisCarts.get(position).getSoluong()+1;
				lisCarts.get(position).setSoluong(soluongmoi);
			}
		}
		
		List<ShoppingCart> lisCarts = (List<ShoppingCart>) httpSession.getAttribute("cart");
		for (ShoppingCart shoppingCart : lisCarts) {
			System.out.println(shoppingCart.getMasp()+"-"+shoppingCart.getTenmau()+"-"+shoppingCart.getTensize()+"-"+shoppingCart.getSoluong());
		}
		
	}
	
	@GetMapping("GetQuantityCart")
	@ResponseBody
	public String getQuantityCart(HttpSession httpSession) {
		
		if(httpSession.getAttribute("cart") != null) {
			List<ShoppingCart> lisCarts = (List<ShoppingCart>) httpSession.getAttribute("cart");
			return lisCarts.size()+"";
		}
		return "";
	}
	
	private int checkDuplicateProductCart(HttpSession httpSession,int masp, int mamau, int masize) {
		List<ShoppingCart> lisCarts = (List<ShoppingCart>) httpSession.getAttribute("cart");
		for(int i =0; i<lisCarts.size(); i++) {
			if(lisCarts.get(i).getMasp() == masp && lisCarts.get(i).getMamau() == mamau && lisCarts.get(i).getMasize() == masize) {
				return i;
			}
		}
		return -1;
	}
	
}
