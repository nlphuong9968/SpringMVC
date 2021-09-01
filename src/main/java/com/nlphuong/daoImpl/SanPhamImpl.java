package com.nlphuong.daoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.nlphuong.dao.SanPhamDAO;
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

		List<SanPham> listSanPhams = session.createQuery("from SANPHAM").setFirstResult(0)
				.setMaxResults(8).getResultList();

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

}