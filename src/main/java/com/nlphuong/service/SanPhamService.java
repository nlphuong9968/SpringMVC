package com.nlphuong.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nlphuong.dao.SanPhamDAO;
import com.nlphuong.daoImpl.SanPhamImpl;
import com.nlphuong.entity.SanPham;

@Service
public class SanPhamService implements SanPhamDAO{

	@Autowired
	SanPhamImpl sanPhamImpl;
	
	@Override
	public List<SanPham> getListProductLimit(int start) {
		
		return sanPhamImpl.getListProductLimit(start);
		
	}

	@Override
	public SanPham getProductDetailByMaSP(int masanpham) {
		
		return sanPhamImpl.getProductDetailByMaSP(masanpham);
	}

	@Override
	public List<SanPham> getListProductByCategoryId(int madanhmuc) {
		
		return sanPhamImpl.getListProductByCategoryId(madanhmuc);
	}

	@Override
	public boolean deleteProductById(int masp) {
		
		return sanPhamImpl.deleteProductById(masp);
	}

	@Override
	public boolean addProduct(SanPham sanPham) {
		
		return sanPhamImpl.addProduct(sanPham);
	}

}
