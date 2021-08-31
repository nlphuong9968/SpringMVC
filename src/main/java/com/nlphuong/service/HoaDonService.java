package com.nlphuong.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nlphuong.dao.HoaDonDAO;
import com.nlphuong.daoImpl.HoaDonImpl;
import com.nlphuong.entity.HoaDon;

@Service
public class HoaDonService implements HoaDonDAO{

	@Autowired
	HoaDonImpl hoaDonImpl;
	
	@Override
	public int addBill(HoaDon hoaDon) {
		return hoaDonImpl.addBill(hoaDon);
	}

}
