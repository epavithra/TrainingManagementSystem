<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">

        	<a class="navbar-brand" href="#">Training Management System</a>
        	        <div class="topnav">
        	
                <ul class="navbar-nav">
                   
                  <li class="nav-item">
                    <a class="nav-link" href="#">HOME</a>
                  </li>
                 </ul>
               
                 <div class="pull-right">
                 <ul class="nav pull-right">
                    <li class="nav-item">
                    	<a class="nav-link" href="#">LOGOUT</a>
                    </li>
                 
                 </ul>
                 </div>
                 
           </nav> 
 <%
              String report=(String)request.getAttribute("report");
              String skillType=(String)request.getAttribute("skillType");
              int TraineeId=(Integer)request.getAttribute("TraineeId");
              out.println("<center>");
              out.println("<table border='1'>");
              	out.println("<tr><th>");
              	out.println("TRAINEE ID");
              	out.println("</th>");
              	out.println("<th>");
              	out.println("SKILL TYPE");
              	out.println("</th>");
              	out.println("<th>");
              	out.println("REPORT");
              	out.println("</th>");
              	out.println("</tr>");
				out.println("<tr>");
				out.println("<td>");
				out.println(TraineeId);
				out.println("</td>");
				out.println("<td>");
				out.println(skillType);
				out.println("</td>");
				out.println("<td>");
				out.println(report);
				out.println("</tr>");
				out.println("</table>");
              %></div>
</body>
</html>