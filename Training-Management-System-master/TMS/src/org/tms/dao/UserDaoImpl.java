package org.tms.dao;


import java.sql.Connection;
import java.sql.ResultSet;

import org.tms.beans.User;
import org.tms.util.DBConstants;
import org.tms.util.DBUtil;

import com.mysql.jdbc.PreparedStatement;

public class UserDaoImpl implements UserDao {

	public String validateUser(User user) {
		Connection con=null;
		PreparedStatement pst=null;
		String role="";
		try {
			con=DBUtil.getConnection(DBConstants.DRIVER, DBConstants.URL, DBConstants.UNAME,DBConstants.PWD);
			pst=(PreparedStatement) con.prepareStatement("select role from users where uid=? and Pass=?");
			pst.setString(1,user.getUserId());
			pst.setString(2, user.getPassword());
			ResultSet rs= pst.executeQuery();
		
			if(rs.next())
			{
				role=role+rs.getString(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return role;
	}

}
		