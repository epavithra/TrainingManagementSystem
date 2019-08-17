package org.tms.dao;

import java.sql.Connection;
import java.sql.ResultSet;



import org.tms.util.DBConstants;
import org.tms.util.DBUtil;

import com.mysql.jdbc.PreparedStatement;

public class TrainerSearchTraineeDaoImpl implements TrainerSearchTraineeDao {

	
	public String TrainerSearchTrainee(String traineeId,String skillType) {

		Connection con=null;
		PreparedStatement pst=null;
		//List<CourseDetails> li =new ArrayList<CourseDetails>();
		String res="";
		try {
			con=DBUtil.getConnection(DBConstants.DRIVER, DBConstants.URL, DBConstants.UNAME,DBConstants.PWD);
			pst=(PreparedStatement) con.prepareStatement("select case when count(Hands_on_status)>=4 then 'completed' when count(Hands_on_status)>0 then 'in progress' else 'not completed' end as Report from courses where p_uid=? and skill_type=? and Hands_on_status='completed'");
			pst.setString(1,traineeId);
			pst.setString(2, skillType);
			
			ResultSet rs= pst.executeQuery();
			
			System.out.println(res);
			if(rs.next())
			{
				//cd=new CourseDetails();
				//li.add(new CourseDetails(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getInt(7),rs.getString(8)));
				res=rs.getString(1);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	
	
	}

}
