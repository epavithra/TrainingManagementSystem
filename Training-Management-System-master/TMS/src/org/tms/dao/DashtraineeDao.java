package org.tms.dao;

import java.util.List;

import org.tms.beans.DashTrainee;



public interface DashtraineeDao {
	
	public List<DashTrainee> getDashTrainees(String id);
}
