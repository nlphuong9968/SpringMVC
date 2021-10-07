package com.nlphuong.daoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.nlphuong.dao.DanhMucSPDAO;
import com.nlphuong.entity.DanhMucSanPham;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class DanhMucSPImpl implements DanhMucSPDAO{
	
	@Autowired
	SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<DanhMucSanPham> getDanhMucSP() {
		Session session = sessionFactory.getCurrentSession();

		List<DanhMucSanPham> mucSanPhams = session.createQuery("from DANHMUCSANPHAM").getResultList();
		
		return mucSanPhams;
	}

}
