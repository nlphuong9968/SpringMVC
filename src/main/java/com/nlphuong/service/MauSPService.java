package com.nlphuong.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nlphuong.dao.MauSPDAO;
import com.nlphuong.daoImpl.MauSPImpl;
import com.nlphuong.entity.MauSanPham;

@Service
public class MauSPService implements MauSPDAO{
	
	@Autowired
	MauSPImpl mauSPImpl;

	@Override
	public List<MauSanPham> getMauSanPhams() {
		
		return mauSPImpl.getMauSanPhams();
	}

}
