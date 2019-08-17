package org.tms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.tms.beans.Register;
import org.tms.util.DBConstants;
import org.tms.util.DBUtil;


public class Registerimpl implements RegisterDao {
	public boolean insert(Register r) {
		Connection con=null;
		PreparedStatement pst=null;
		boolean b=false;
		try {
			con=DBUtil.getConnection(DBConstants.DRIVER, DBConstants.URL, DBConstants.UNAME, DBConstants.PWD);
			pst=con.prepareStatement("insert into users(uid,pass,fname,lname,date,vertical,Designation,Location,phone,role,trainer) values(?,?,?,?,?,?,?,?,?,?,?)");
			pst.setString(1, r.getUid());
			pst.setString(2, r.getPass());
			pst.setString(3, r.getFname());
			pst.setString(4, r.getLname());
			pst.setString(5, r.getDate());
			pst.setString(6, r.getVertical());
			pst.setString(7, r.getDesignation());
			pst.setString(8, r.getLocation());
			pst.setString(9, r.getPhone());
			pst.setString(10, r.getRole());
			pst.setString(11, r. getTrainer());
			int s=pst.executeUpdate();
			
			if(s>0)
				b=true;
			else
				b=false;
			con.close();
			
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		return b;
	}
	public boolean registrationValidation( String uid) {
        Connection con=null;
        PreparedStatement pst=null;
        boolean b=false;
        try {
               con=DBUtil.getConnection(DBConstants.DRIVER, DBConstants.URL, DBConstants.UNAME,DBConstants.PWD);
               pst=(PreparedStatement) con.prepareStatement("select * from users where uid=? ");
               pst.setString(1,uid);
               
               ResultSet rs= pst.executeQuery();
        
               if(rs.next())
               {
                     b=true;
               }
               else
                     b=false;
               con.close();
        } catch (Exception e) {
               e.printStackTrace();
        }
        
        return b;
 }


}
