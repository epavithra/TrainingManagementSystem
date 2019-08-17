package org.tms.services;


import org.tms.beans.course;
import org.tms.dao.CourseDao;
import org.tms.dao.CourseDaoimpl;


	public class courseserviceimpl implements courseservice {
		CourseDao dao=new CourseDaoimpl();
			
			
			public boolean course(course r) {
				boolean res=dao.insert(r);
				return res;
			}


	}

