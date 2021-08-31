package com.nlphuong.daoImpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.nlphuong.dao.CTHoaDonDAO;
import com.nlphuong.entity.ChiTietHoaDon;
import com.nlphuong.entity.ChiTietHoaDonId;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class CTHoaDonImpl implements CTHoaDonDAO{
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public boolean addCTHoaDon(ChiTietHoaDon chiTietHoaDon) {
		Session session = sessionFactory.getCurrentSession();
		ChiTietHoaDonId id = (ChiTietHoaDonId) session.save(chiTietHoaDon);
		if (id != null) {
			return true;
		} else {
			return false;
		}
	}

}
