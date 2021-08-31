package com.nlphuong.daoImpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.nlphuong.dao.HoaDonDAO;
import com.nlphuong.entity.HoaDon;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class HoaDonImpl implements HoaDonDAO {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public int addBill(HoaDon hoaDon) {
		Session session = sessionFactory.getCurrentSession();
		int id = (int) session.save(hoaDon);
		if (id > 0) {
			return id;
		} else {
			return 0;
		}
	}

}
