package com.nlphuong.dao;

import java.util.List;

import com.nlphuong.entity.SanPham;

public interface SanPhamDAO {

	List<SanPham> getListProductLimit(int start);
}
