package com.nlphuong.daoImpl;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.nlphuong.dao.SanPhamDAO;
import com.nlphuong.entity.ChiTietHoaDon;
import com.nlphuong.entity.ChiTietHoaDonId;
import com.nlphuong.entity.ChiTietSanPham;
import com.nlphuong.entity.SanPham;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class SanPhamImpl implements SanPhamDAO {

	@Autowired
	SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<SanPham> getListProductLimit(int start) {
		Session session = sessionFactory.getCurrentSession();
		List<SanPham> listSanPhams = new ArrayList<>();
		if(start < 0) {
			listSanPhams = session.createQuery("from SANPHAM").getResultList();
		}else {
			listSanPhams = session.createQuery("from SANPHAM").setFirstResult(start)
				.setMaxResults(3).getResultList();
		}
		return listSanPhams;
	}

	@Override
	@Transactional
	public SanPham getProductDetailByMaSP(int masanpham) {
		Session session = sessionFactory.getCurrentSession();
		String query = "FROM SANPHAM where masanpham = "+masanpham;

		SanPham sanPham = (SanPham) session.createQuery(query).getSingleResult();

		return sanPham;
	}

	@Override
	@Transactional
	public List<SanPham> getListProductByCategoryId(int madanhmuc) {
		Session session = sessionFactory.getCurrentSession();
		String query = "FROM SANPHAM where madanhmuc = "+madanhmuc;

		List<SanPham> listSanPhams = (List<SanPham>) session.createQuery(query).getResultList();
		
		return listSanPhams;
	}

	@Override
	@Transactional
	public boolean deleteProductById(int masp) {
		Session session = sessionFactory.getCurrentSession();
//		SanPham sanPham = new SanPham();
//		sanPham.setMasanpham(masp);
		
		SanPham sanPham = session.get(SanPham.class, masp);
		
		Set<ChiTietSanPham> chiTietSanPhams = sanPham.getChiTietSanPhams();
		
		for (ChiTietSanPham chiTietSanPham : chiTietSanPhams) {
			
			session.createQuery("delete CHITIETHOADON where machitietsanpham ="+chiTietSanPham.getMachitietsanpham()).executeUpdate();
			
		}
		session.createQuery("delete CHITIETSANPHAM where masanpham ="+masp).executeUpdate();
		session.createQuery("delete SANPHAM where masanpham ="+masp).executeUpdate();
		return false;
	}

}
