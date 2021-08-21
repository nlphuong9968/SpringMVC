package com.nlphuong.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nlphuong.dao.NhanVienDAO;
import com.nlphuong.daoImpl.NhanVienImpl;

@Service
public class NhanVienService implements NhanVienImpl{

	@Autowired
	NhanVienDAO nhanVienDAO;
	
	public void getListNhanVien() {
		System.out.println("here is service");
	}

	@Override
	public boolean checkLogin(String email, String password) {
		boolean check = nhanVienDAO.checkLogin(email, password);
		return check;
	}
	
	
}
