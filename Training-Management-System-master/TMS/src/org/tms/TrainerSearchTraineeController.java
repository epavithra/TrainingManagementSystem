package org.tms;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.tms.dao.TrainerSearchTraineeDao;
import org.tms.dao.TrainerSearchTraineeDaoImpl;


@WebServlet("/TrainerSearchTrainee")
public class TrainerSearchTraineeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	TrainerSearchTraineeDao st=new TrainerSearchTraineeDaoImpl();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		String traineeId=request.getParameter("traineeId");
		String skill=request.getParameter("skilltype");
		 String res = st.TrainerSearchTrainee(traineeId,skill);
		 request.setAttribute("TraineeId",traineeId);
		 request.setAttribute("skillType", skill);
		 request.setAttribute("report", res);
		 RequestDispatcher rd=request.getRequestDispatcher("DashTrainer.jsp");
		 rd.forward(request, response);
	}

}
