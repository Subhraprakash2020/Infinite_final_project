package com.java.login;

import java.util.Map;

import javax.faces.context.FacesContext;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;




public class LoginDAOImpl implements LoginDAO{
	SessionFactory sf;
	Session session;

	@Override
	public String verifyOtp(Login login) {
		sf = SessionHelper.getConnection();
		Session session = sf.openSession();
		Criteria cr = session.createCriteria(Login.class);
		cr.add(Restrictions.eq("userName", login.getUserName()));
		cr.add(Restrictions.eq("otp", login.getOtp()));
		cr.setProjection(Projections.rowCount());
		long count = (long) cr.uniqueResult();
		if(count == 1) {
			return "Demo.jsp?faces-redirect=true";
		}
		else {
			return "ValidateOtp.jsp?faces-redirect=true";
		}
		
		
	}

	@Override
	public String loginDao(Login login) {
		sf = SessionHelper.getConnection();
		Session session = sf.openSession();
		Criteria cr = session.createCriteria(Login.class);
		cr.add(Restrictions.eq("userName",login.getUserName()));
		cr.add(Restrictions.eq("password",EncryptPassword.getCode(login.getPassword())));
		
		cr.setProjection(Projections.rowCount());
		long count = (long) cr.uniqueResult();
		if(count == 1) {
			return"Demo.jsp?faces-redirect=true";
		}
		
		else {
			return "Login.jsp?faces-redirect=true";
		}
	}

}
