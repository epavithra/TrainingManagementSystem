package org.tms;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.tms.beans.Register;
import org.tms.services.Registerservice;
import org.tms.services.Serviceimpl;

@WebServlet("/Regservlet")
public class Regservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 Registerservice service=new Serviceimpl();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String uid=request.getParameter("userId");
		String pass=request.getParameter("password");
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String date=request.getParameter("date");
		String vertical=request.getParameter("vertical");
		String Designation=request.getParameter("Designation");
		String Location=request.getParameter("Location");
		String phone=request.getParameter("phone");
		String role=request.getParameter("role");
		String trainer=request.getParameter("trainer");
		boolean res=service.register(new Register(uid,pass,fname,lname,date,vertical,Designation,Location,phone,role,trainer));
		
		if(res==true)
		{
			 out.println("<script type=\"text/javascript\">");
			   out.println("alert('success');");
			   out.println("location='home.jsp';");
			   out.println("</script>");
			 
		}
			//pw.println("<h2>Successfully inserted</h2>");
		else
			//pw.println("<h2>Not inserted</h2>");
		{
			 out.println("<script type=\"text/javascript\">");
			   out.println("alert('failure');");
			   out.println("location='AdminRegister.jsp';");
			   out.println("</script>");
				   
		}
		out.close();
	}

}
