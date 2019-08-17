package org.tms;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.tms.beans.course;

import org.tms.services.courseservice;
import org.tms.services.courseserviceimpl;


@WebServlet("/course")
public class courseserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    courseservice service=new courseserviceimpl();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String p_uid=request.getParameter("p_uid");
		String name=request.getParameter("name");
		String trainer_name=request.getParameter("trainer_name");
		String skill_type=request.getParameter("skill_type");
		String course_name=request.getParameter("course_name");
		String Hands_on_status=request.getParameter("Hands_on_status");
		String assessment_scores=request.getParameter("assessment_scores");
		String Evaluation_comments=request.getParameter("Evaluation_comments");
	
		boolean res=service.course(new course(p_uid,name,trainer_name,skill_type,course_name,Hands_on_status,assessment_scores,Evaluation_comments));
		
		if(res==true)
		{
			 out.println("<script type=\"text/javascript\">");
			   out.println("alert('success');");
			   out.println("location='Trainer.jsp';");
			   out.println("</script>");
			 
		}
			//pw.println("<h2>Successfully inserted</h2>");
		else
			//pw.println("<h2>Not inserted</h2>");
		{
			 out.println("<script type=\"text/javascript\">");
			   out.println("alert('failure');");
			   out.println("location='Course_Entry.jsp';");
			   out.println("</script>");
				   
		}
		out.close();
	}
	}

