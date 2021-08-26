package com.nlphuong.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nlphuong.dao.NhanVienDAO;
import com.nlphuong.daoImpl.NhanVienImpl;
import com.nlphuong.entity.NhanVien;


@Service
public class NhanVienService implements NhanVienDAO{

	@Autowired
	NhanVienImpl nhanVienImpl;
	
	public void getListNhanVien() {
		System.out.println("here is service");
	}

	@Override
	public boolean checkLogin(String email, String password) {
		boolean check = nhanVienImpl.checkLogin(email, password);
		return check;
	}

	@Override
	public boolean addNhanVien(NhanVien nhanVien) {
		boolean flagAdd = nhanVienImpl.addNhanVien(nhanVien);
		return flagAdd;
	}
	
	
}
