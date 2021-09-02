package com.nlphuong.daoImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.nlphuong.dao.SizeSPDAO;
import com.nlphuong.entity.SizeSanPham;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class SizeSPImpl implements SizeSPDAO{
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public List<SizeSanPham> getSizeSanPhams() {
		Session session = sessionFactory.getCurrentSession();
		String query = "from SIZESANPHAM";
		List<SizeSanPham> sizeSanPhams = session.createQuery(query).getResultList();
		return sizeSanPhams;
	}

}
