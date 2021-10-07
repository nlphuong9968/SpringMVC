package com.nlphuong.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.servlet.ServletRequestContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.nlphuong.entity.ChiTietSanPham;
import com.nlphuong.entity.DanhMucSanPham;
import com.nlphuong.entity.JsonSP;
import com.nlphuong.entity.MauSanPham;
import com.nlphuong.entity.SanPham;
import com.nlphuong.entity.ShoppingCart;
import com.nlphuong.entity.SizeSanPham;
import com.nlphuong.service.NhanVienService;
import com.nlphuong.service.SanPhamService;

@Controller
@RequestMapping("api/")
@SessionAttributes({ "email", "cart" })
public class ApiController {

	@Autowired
	NhanVienService nhanVienService;

	@Autowired
	SanPhamService sanPhamService;

	@GetMapping("CheckLogin")
	@ResponseBody
	public String checkLogin(@RequestParam String email, @RequestParam String password, ModelMap modelMap) {

		boolean check = nhanVienService.checkLogin(email, password);
		modelMap.addAttribute("email", email);

		return "" + check;
	}

	@GetMapping("AddShoppingCart")
	@ResponseBody
	public String addShoppingCart(@ModelAttribute ShoppingCart cart, HttpSession httpSession) {
		if (httpSession.getAttribute("cart") == null) {
			List<ShoppingCart> carts = new ArrayList<>();
			cart.setSoluongCart(1);
			carts.add(cart);
			httpSession.setAttribute("cart", carts);

			return carts.size() + "";
		} else {
			List<ShoppingCart> lisCarts = (List<ShoppingCart>) httpSession.getAttribute("cart");
			int position = checkDuplicateProductCart(httpSession, cart.getMasp(), cart.getMamau(), cart.getMasize());
			if (position == -1) {
				cart.setSoluongCart(1);
				lisCarts.add(cart);
			} else {
				int soluongmoi = lisCarts.get(position).getSoluongCart() + 1;
				lisCarts.get(position).setSoluongCart(soluongmoi);
			}
			return lisCarts.size() + "";
		}

	}

//	@GetMapping("GetQuantityCart")
//	@ResponseBody
//	public String getQuantityCart(HttpSession httpSession) {
//		
//		if(httpSession.getAttribute("cart") != null) {
//			List<ShoppingCart> lisCarts = (List<ShoppingCart>) httpSession.getAttribute("cart");
//			return lisCarts.size()+"";
//		}
//		return "";
//	}

	@GetMapping("UpdateQuantityCart")
	@ResponseBody
	public void updateQuantityCart(HttpSession httpSession, @RequestParam int soluongcart, @RequestParam int masp,
			@RequestParam int mamau, @RequestParam int masize) {
		if (httpSession.getAttribute("cart") != null) {
			List<ShoppingCart> lisCarts = (List<ShoppingCart>) httpSession.getAttribute("cart");

			int position = checkDuplicateProductCart(httpSession, masp, mamau, masize);
			lisCarts.get(position).setSoluongCart(soluongcart);
		}
	}

	@GetMapping("DeleteCart")
	@ResponseBody
	public void deleteCart(HttpSession httpSession, @RequestParam int masp, @RequestParam int mamau,
			@RequestParam int masize) {
		if (httpSession.getAttribute("cart") != null) {
			List<ShoppingCart> lisCarts = (List<ShoppingCart>) httpSession.getAttribute("cart");

			int position = checkDuplicateProductCart(httpSession, masp, mamau, masize);
			lisCarts.remove(position);
		}
	}

	public int checkDuplicateProductCart(HttpSession httpSession, int masp, int mamau, int masize) {
		List<ShoppingCart> lisCarts = (List<ShoppingCart>) httpSession.getAttribute("cart");
		for (int i = 0; i < lisCarts.size(); i++) {
			if (lisCarts.get(i).getMasp() == masp && lisCarts.get(i).getMamau() == mamau
					&& lisCarts.get(i).getMasize() == masize) {
				return i;
			}
		}
		return -1;
	}

	@GetMapping(path = "getNumPage", produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String checkLogin(@RequestParam int indexStart) {

		String html = "";
		List<SanPham> sanPhams = sanPhamService.getListProductLimit(indexStart);
		for (SanPham sp : sanPhams) {
			
			html += "<tr>";
			html += "<td>";
			html += "<div class='checkbox'>";
			html += "<label><input class='checkBoxSP' type='checkbox' value='"+sp.getMasanpham()+"'>";
			html += "</label>";
			html += "</div>";
			html += "</td>";
			html += "<td class='tensp' >"+sp.getTensanpham()+"</td>";
			html += "<td class='giatien' >"+sp.getGiatien()+"</td>";
			html += "<td class='editSP' data-id='"+sp.getMasanpham()+"'><button>Edit</button></td> ";
			html += "</tr>";
		}
		System.out.println(html);
		return html;
	}
	
	@GetMapping("DeleteProduct")
	@ResponseBody
	public String deleteProductByID(@RequestParam int masp) {
		
		sanPhamService.deleteProductById(masp);
		return "";
	}
	
	@Autowired
	ServletContext context;
	
	@PostMapping("UploadFile")
	@ResponseBody
	public String uploadFile(MultipartHttpServletRequest request) {
		String path = new File("src/main/resources/img/product/")
                .getAbsolutePath();
		System.out.println(path);
		String pathSaveFile = context.getRealPath("/resources/img/product/");
		
		Iterator<String> listNames = request.getFileNames();
		
		MultipartFile mpf = request.getFile(listNames.next());
		File fileSave = new File(pathSaveFile + mpf.getOriginalFilename());
		
		try {
			mpf.transferTo(fileSave);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(pathSaveFile);
		return "";
	}
	
	@PostMapping("AddProduct")
	@ResponseBody
	public void addProduct(@RequestParam String dataJson) {
		ObjectMapper mapper = new ObjectMapper();
		System.out.println(dataJson);
		try {
			SanPham sanPham = mapper.readValue(dataJson, SanPham.class);
			System.out.println(sanPham.getTensanpham()+"-"+sanPham.getChiTietSanPhams().size()+"-"+sanPham.getDanhMucSanPham().getMadanhmuc());
			sanPhamService.addProduct(sanPham);
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
//		JsonNode jsonNode;
//		try {
//			jsonNode = mapper.readTree(dataJson);
//			JsonNode jsonChitietJsonNode = jsonNode.get("chiTietSanPhams");
//			
//			SanPham sanPham = new SanPham();
//			DanhMucSanPham danhMucSanPham = new DanhMucSanPham();
//			Set<ChiTietSanPham> chiTietSanPhams = new HashSet<>();
//			
//			for (JsonNode chitietNode : jsonChitietJsonNode) {
//				ChiTietSanPham chiTietSanPham = new ChiTietSanPham();
//				
//				MauSanPham mauSanPham = new MauSanPham();
//				mauSanPham.setMamau(chitietNode.get("mauSanPham").asInt());
//				
//				SizeSanPham sizeSanPham = new SizeSanPham();
//				
//				sizeSanPham.setMasize(chitietNode.get("sizeSanPham").asInt());
//				
//				chiTietSanPham.setMauSanPham(mauSanPham);
//				chiTietSanPham.setSizeSanPham(sizeSanPham);
//				chiTietSanPham.setSoluong(chitietNode.get("soluong").asInt());
//				
//				chiTietSanPhams.add(chiTietSanPham);
//			}
//			
//			danhMucSanPham.setMadanhmuc(jsonNode.get("danhMucSanPham").asInt());
//			
//			sanPham.setTensanpham(jsonNode.get("tensanpham").asText());
//			sanPham.setGiatien(jsonNode.get("giatien").asText());
//			sanPham.setGianhcho(jsonNode.get("gianhcho").asText());
//			sanPham.setMota(jsonNode.get("mota").asText());
//			sanPham.setHinhsanpham(jsonNode.get("hinhsanpham").asText());
//			sanPham.setDanhMucSanPham(danhMucSanPham);
//			sanPham.setChiTietSanPhams(chiTietSanPhams);
//			
//			sanPhamService.addProduct(sanPham);
//		} catch (JsonMappingException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (JsonProcessingException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}	
	}
	
	@PostMapping(path = "EditProduct", produces = "application/json; charset=utf-8")
	@ResponseBody
	public JsonSP getListProductById(@RequestParam int masanpham){
		JsonSP jsonSP = new JsonSP();
		
		SanPham sanPham = sanPhamService.getProductDetailByMaSP(masanpham);
		
		jsonSP.setMasanpham(sanPham.getMasanpham());
		jsonSP.setGiatien(sanPham.getGiatien());
		jsonSP.setTensanpham(sanPham.getTensanpham());
		jsonSP.setMota(sanPham.getMota());
		jsonSP.setGianhcho(sanPham.getGianhcho());
		jsonSP.setHinhsanpham(sanPham.getHinhsanpham());
		
		DanhMucSanPham danhMucSanPham = new DanhMucSanPham();
		danhMucSanPham.setMadanhmuc(sanPham.getDanhMucSanPham().getMadanhmuc());
		danhMucSanPham.setTendanhmuc(sanPham.getDanhMucSanPham().getTendanhmuc());
		
		jsonSP.setDanhMucSanPham(danhMucSanPham);
		
		Set<ChiTietSanPham> chiTietSanPhams = new HashSet<>();
		for (ChiTietSanPham chiTietSP : sanPham.getChiTietSanPhams()) {
			ChiTietSanPham chiTietSanPham = new ChiTietSanPham();
			
			chiTietSanPham.setMachitietsanpham(chiTietSP.getMachitietsanpham());
			MauSanPham mauSanPham = new MauSanPham();
			mauSanPham.setMamau(chiTietSP.getMauSanPham().getMamau());
			mauSanPham.setTenmau(chiTietSP.getMauSanPham().getTenmau());
			chiTietSanPham.setMauSanPham(mauSanPham);
			
			SizeSanPham sizeSanPham = new SizeSanPham();
			sizeSanPham.setMasize(chiTietSP.getSizeSanPham().getMasize());
			sizeSanPham.setSize(chiTietSP.getSizeSanPham().getSize());
			chiTietSanPham.setSizeSanPham(sizeSanPham);
			
			chiTietSanPham.setSoluong(chiTietSP.getSoluong());
			
			chiTietSanPhams.add(chiTietSanPham);
		}
		
		jsonSP.setChiTietSanPhams(chiTietSanPhams);
		
		return jsonSP;
	}
	
	@PostMapping("UpdateProduct")
	@ResponseBody
	public void updateProduct(@RequestParam String dataJson) {
		ObjectMapper mapper = new ObjectMapper();
		System.out.println(dataJson);
		try {
			SanPham sanPham = mapper.readValue(dataJson, SanPham.class);
			System.out.println(sanPham.getMasanpham()+"-"+sanPham.getTensanpham()+"-"+sanPham.getChiTietSanPhams().size()+"-"+sanPham.getDanhMucSanPham().getMadanhmuc());
			sanPhamService.updateProduct(sanPham);
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
