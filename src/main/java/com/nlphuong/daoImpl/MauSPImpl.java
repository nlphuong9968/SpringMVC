package com.nlphuong.daoImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.nlphuong.dao.MauSPDAO;
import com.nlphuong.entity.MauSanPham;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class MauSPImpl implements MauSPDAO{
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public List<MauSanPham> getMauSanPhams() {
		Session session = sessionFactory.getCurrentSession();
		String query = "from MAUSANPHAM";
		List<MauSanPham> mauSanPhams = session.createQuery(query).getResultList();
		return mauSanPhams;
	}

}
