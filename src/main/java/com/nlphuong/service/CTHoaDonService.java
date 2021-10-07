package com.nlphuong.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nlphuong.dao.CTHoaDonDAO;
import com.nlphuong.daoImpl.CTHoaDonImpl;
import com.nlphuong.entity.ChiTietHoaDon;

@Service
public class CTHoaDonService implements CTHoaDonDAO{
	
	@Autowired
	CTHoaDonImpl ctHoaDonImpl;

	@Override
	public boolean addCTHoaDon(ChiTietHoaDon chiTietHoaDon) {
		return ctHoaDonImpl.addCTHoaDon(chiTietHoaDon);
	}

}
