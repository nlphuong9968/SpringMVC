package com.nlphuong.dao;

import java.util.List;

import com.nlphuong.entity.SanPham;

public interface SanPhamDAO {

	List<SanPham> getListProductLimit(int start);
	
	SanPham getProductDetailByMaSP(int masanpham);
	
	List<SanPham> getListProductByCategoryId(int madanhmuc);
	
	boolean deleteProductById(int masp);
}
