package org.tms.services;

import java.util.List;

import org.tms.beans.DashTrainee;



public interface DashService {
	public List<DashTrainee> viewDetails(String id);
}
