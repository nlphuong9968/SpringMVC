package com.nlphuong.dao;

import com.nlphuong.entity.NhanVien;

public interface NhanVienDAO {
	
	boolean checkLogin(String email, String password);
	
	boolean addNhanVien(NhanVien nhanVien);
}
