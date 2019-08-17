package org.tms;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.tms.dao.RegisterDao;
import org.tms.dao.Registerimpl;

@WebServlet("/DbCheck")
public class DbCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
  	
    RegisterDao dao=new Registerimpl();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String msg="";
		String uid=request.getParameter("id");
		if(dao.registrationValidation(uid))
		{
			msg=msg+" user already existed with id "+uid;
			
		}
		out.println(msg);
		
		
		
	}

}
