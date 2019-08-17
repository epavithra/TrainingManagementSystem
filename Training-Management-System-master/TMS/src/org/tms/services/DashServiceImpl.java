package org.tms.services;


import java.util.List;

import org.tms.beans.DashTrainee;
import org.tms.dao.DashTraineeDaoImpl;
import org.tms.dao.DashtraineeDao;



public class DashServiceImpl implements DashService{
	DashtraineeDao d=new DashTraineeDaoImpl(); 
	public List<DashTrainee> viewDetails(String id) {
		List<DashTrainee> e1=d.getDashTrainees(id);
		return e1;
	}
}
