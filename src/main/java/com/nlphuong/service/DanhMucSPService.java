package com.nlphuong.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nlphuong.dao.DanhMucSPDAO;
import com.nlphuong.daoImpl.DanhMucSPImpl;
import com.nlphuong.entity.DanhMucSanPham;

@Service
public class DanhMucSPService implements DanhMucSPDAO{
	
	@Autowired
	DanhMucSPImpl danhMucSPImpl;

	@Override
	public List<DanhMucSanPham> getDanhMucSP() {
		return danhMucSPImpl.getDanhMucSP();
	}

}
