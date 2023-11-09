package com.java.login;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

public class ProviderLoginImpl implements ProviderLoginDAO{
	SessionFactory sf;
	Session session;

	@Override
	public String validateOtp(ProviderLogin provider) {
		sf = SessionHelper.getConnection();
		Session session = sf.openSession();
		Criteria cr = session.createCriteria(Login.class);
		cr.add(Restrictions.eq("userName", provider.getUserName()));
		cr.add(Restrictions.eq("otp", provider.getOtp()));
		cr.setProjection(Projections.rowCount());
		long count = (long) cr.uniqueResult();
		if(count == 1) {
			return "Demo.jsp?faces-redirect=true";
		}
		else {
			return "index.jsp?faces-redirect=true";
		}
	}

	@Override
	public String login(ProviderLogin provider) {
		sf = SessionHelper.getConnection();
		Session session = sf.openSession();
		Criteria cr = session.createCriteria(Login.class);
		cr.add(Restrictions.eq("userName",provider.getUserName()));
		cr.add(Restrictions.eq("password",EncryptPassword.getCode(provider.getPassword())));
		
		cr.setProjection(Projections.rowCount());
		long count = (long) cr.uniqueResult();
		if(count == 1) {
			return"Demo.jsp?faces-redirect=true";
		}
		
		else {
			return "ProviderLogin.jsp?faces-redirect=true";
		}
	}

}
