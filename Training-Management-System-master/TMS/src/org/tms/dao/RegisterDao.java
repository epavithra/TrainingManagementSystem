package org.tms.dao;

import org.tms.beans.Register;

public interface RegisterDao {
	public boolean insert(Register r);
	public boolean registrationValidation( String uid);
}
