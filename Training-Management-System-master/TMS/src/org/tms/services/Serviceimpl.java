package org.tms.services;


import org.tms.beans.Register;
import org.tms.dao.RegisterDao;
import org.tms.dao.Registerimpl;

public class Serviceimpl implements Registerservice {
RegisterDao dao=new Registerimpl();
	
	
	public boolean register(Register r) {
		boolean res=dao.insert(r);
		return res;
	}
}
