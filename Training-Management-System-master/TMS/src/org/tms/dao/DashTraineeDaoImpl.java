package org.tms.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;

import org.tms.beans.DashTrainee;
import org.tms.util.DBConstants;
import org.tms.util.DBUtil;


public class DashTraineeDaoImpl implements DashtraineeDao{
	public List<DashTrainee> getDashTrainees(String id) {
		/*Connection con=null;
		Statement st=null;
		ResultSet rs=null;*/
		Connection con = null;
		PreparedStatement pst=null;
		ResultSet rs=null;
		List<DashTrainee> e1=new ArrayList<DashTrainee>();
		try {
			con=DBUtil.getConnection(DBConstants.DRIVER, DBConstants.URL, DBConstants.UNAME, DBConstants.PWD);
			pst=con.prepareStatement("select * from courses where p_uid=?");
			pst.setString(1, id);
			rs=pst.executeQuery();
			while(rs.next())
			{
				e1.add(new DashTrainee(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8)));
			}
			rs.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return e1;
	}
}
