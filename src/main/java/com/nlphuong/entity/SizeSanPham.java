package com.nlphuong.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "SIZESANPHAM")
public class SizeSanPham {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int masize;
	
	private String size;

	public SizeSanPham() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getMasize() {
		return masize;
	}

	public void setMasize(int masize) {
		this.masize = masize;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}
	
	
}
