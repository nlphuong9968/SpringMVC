package com.nlphuong.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nlphuong.dao.SizeSPDAO;
import com.nlphuong.daoImpl.SizeSPImpl;
import com.nlphuong.entity.SizeSanPham;

@Service
public class SizeSPService implements SizeSPDAO{
	
	@Autowired
	SizeSPImpl sizeSPImpl;

	@Override
	public List<SizeSanPham> getSizeSanPhams() {
		
		return sizeSPImpl.getSizeSanPhams();
	}

}
