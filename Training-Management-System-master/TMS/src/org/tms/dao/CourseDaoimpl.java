package org.tms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import org.tms.beans.course;
import org.tms.util.DBConstants;
import org.tms.util.DBUtil;

public class CourseDaoimpl implements CourseDao {

	public boolean insert(course r) {
		Connection con=null;
		PreparedStatement pst=null;
		boolean b=false;
		try {
			con=DBUtil.getConnection(DBConstants.DRIVER, DBConstants.URL, DBConstants.UNAME, DBConstants.PWD);
			pst=con.prepareStatement("insert into courses(p_uid,name,trainer_name,skill_type,course_name,Hands_on_status,assessment_scores,Evaluation_comments) values(?,?,?,?,?,?,?,?)");
			pst.setString(1, r.getP_uid());
			pst.setString(2, r.getName());
			pst.setString(3, r.getTrainer_name());
			pst.setString(4, r.getSkill_type());
			pst.setString(5, r.getCourse_name());
			pst.setString(6, r.getHands_on_status());
			pst.setString(7, r.getAssessment_scores());
			pst.setString(8, r.getEvaluation_comments());
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
}
