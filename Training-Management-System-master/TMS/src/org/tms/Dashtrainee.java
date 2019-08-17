package org.tms;
import java.io.IOException;



import java.io.PrintWriter;
import java.util.List;




import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.tms.beans.DashTrainee;
import org.tms.services.DashService;
import org.tms.services.DashServiceImpl;
@WebServlet("/Dashtrainee")
public class Dashtrainee extends HttpServlet {
	private static final long serialVersionUID = 1L;
      DashService service=new DashServiceImpl(); 
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("text/html");
	PrintWriter pw=response.getWriter();
	
	HttpSession session=request.getSession(false);
	String id=(String)session.getAttribute("userId");
	//DashTrainee id=new DashTrainee((String)session.getAttribute("userId"));
	
	//List<DashTrainee> e=service.viewDetails(id);
	List<DashTrainee> e=service.viewDetails(id);
	 pw.println("<!DOCTYPE html>");
	  pw.println("<html>");
	  pw.println("<head>");
	  pw.println("<meta charset=\"utf-8\">");  
	  pw.println("<title>TMS</title>");
	  pw.println("<style>");     
	  pw.println("body {");        
	  pw.println("color:white;background: url(images/trainer.jpg) no-repeat center center fixed; -webkit-background-size: cover; -moz-background-size: cover;-o-background-size: cover;background-size: cover;");
	  pw.println("}");
	  pw.println("table {");        
	  pw.println("margin-top:30px;background: rgba(0,0,0,0.8);");
	  pw.println("}");
	  pw.println("a:hover {");        
	  pw.println("background: rgba(0,0,0,0.4);");
	  pw.println("}");
	  pw.println(".button {");        
	  pw.println("margin-left:1200px;margin-top:25px;display: block;width: 150px;height: 40px;background: rgba(0,0,0,0.9);padding-top: 5px;padding-bottom: 5px;border-radius: 5px;font-weight: bold;");
	  pw.println("}");
	  pw.println("a {");        
	  pw.println("color:white;text-decoration:none;");
	  pw.println("}");
	  pw.println("p {");        
	  pw.println("font-weight:bold;text-align:center;");
	  pw.println("}");
	  pw.println("th,td {");        
	  pw.println("padding:5px;text-align:center");
	  pw.println("}");
	  pw.println("h1 {");        
	  pw.println("margin-top:0px;");
	  pw.println("}");
	  pw.println("</style>");
	  pw.println("</head>");
	  pw.println("<body>");
	 // pw.println("<center>");   
	  pw.println(" <a href='index.jsp' class='button'><p>LOG OUT</p></a>");//pw.println("</center>");   
	pw.println("<br/><center><b>");
	pw.println("<h1>");
	pw.println("Details of "+id);
	pw.println("</h1>");
	pw.println("</b><br/><br/><br/><table border=1>");
	pw.println("<tr><th>Course Name</th><th>Hands On Status</th><th>Assessment Scores</th><th>Evaluation Comments</th></tr>");
	for(DashTrainee s:e)
	{
		pw.println("<tr><td>"+s.getCourse_name()+"</td><td>"+s.getHands_on_status()+"</td><td>"+s.getAssessment_scores()+"</td><td>"+s.getEvaluation_comments()+"</td></tr>");
	}
	pw.println("</table></center>");
	 pw.println("</body>");
	  pw.println("</html>");
	
	//response.sendRedirect("trainee.jsp");
	pw.close();

}
}
