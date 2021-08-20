package com.nlphuong.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity(name = "CHITIETSANPHAM")
public class ChiTietSanPham {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int machitietsanpham;
	
	private int soluong;
	private String ngaynhap;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "masanpham")
	private SanPham sanPham;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "masize")
	private SizeSanPham sizeSanPham;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "mamau")
	private MauSanPham mauSanPham;

	public ChiTietSanPham() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getMachitietsanpham() {
		return machitietsanpham;
	}

	public void setMachitietsanpham(int machitietsanpham) {
		this.machitietsanpham = machitietsanpham;
	}

	public int getSoluong() {
		return soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	public String getNgaynhap() {
		return ngaynhap;
	}

	public void setNgaynhap(String ngaynhap) {
		this.ngaynhap = ngaynhap;
	}

	public SanPham getSanPham() {
		return sanPham;
	}

	public void setSanPham(SanPham sanPham) {
		this.sanPham = sanPham;
	}

	public SizeSanPham getSizeSanPham() {
		return sizeSanPham;
	}

	public void setSizeSanPham(SizeSanPham sizeSanPham) {
		this.sizeSanPham = sizeSanPham;
	}

	public MauSanPham getMauSanPham() {
		return mauSanPham;
	}

	public void setMauSanPham(MauSanPham mauSanPham) {
		this.mauSanPham = mauSanPham;
	}
	
}
