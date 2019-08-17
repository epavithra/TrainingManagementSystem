package org.tms;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.tms.beans.User;
import org.tms.dao.UserDao;
import org.tms.dao.UserDaoImpl;


@WebServlet("/LoginServlet")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	UserDao dao=new UserDaoImpl();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId=request.getParameter("userId");
		String password=request.getParameter("password");
		User user=new User();
		user.setUserId(userId);
		user.setPassword(password);
		
		
		String role=dao.validateUser(user);
	
		if(role.equals("admin"))
		{
			HttpSession session=request.getSession();
			session.setAttribute("userId",userId);
			request.setAttribute("pageTitle", "Admin Page");
			RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}
		else if(role.equals("trainer"))
		{
			HttpSession session=request.getSession();
			session.setAttribute("userId", userId);
			request.setAttribute("pageTitle", "Trainer Page");
			request.setAttribute("search", false);
			RequestDispatcher rd=request.getRequestDispatcher("Trainer.jsp");
			rd.forward(request, response);
		}
		else if(role.equals("trainee"))
		{
			HttpSession session=request.getSession();
			session.setAttribute("userId", userId);
			request.setAttribute("pageTitle", "Trainee Page");
			RequestDispatcher rd=request.getRequestDispatcher("Dashtrainee");
			rd.forward(request, response);
		}
		else
		{
			request.setAttribute("pageTitle", "Login Page");
			request.setAttribute("msg", "No User Found");
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
	}
		
	}
