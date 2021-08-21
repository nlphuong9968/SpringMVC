package com.nlphuong.daoImpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.nlphuong.dao.NhanVienDAO;
import com.nlphuong.entity.NhanVien;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class NhanVienImpl implements NhanVienDAO{
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public boolean checkLogin(String email, String password) {
		Session session = sessionFactory.getCurrentSession();
		try {
			NhanVien nhanVien =  (NhanVien) session.createQuery(" FROM NHANVIEN WHERE email = '"+ email 
					+ "' AND matkhau = '"+ password + "'").getSingleResult();
			if(nhanVien != null) {
				return true;
			}else {
				return false;
			}
		}catch (Exception e) {
			return false;
		}
	}
}