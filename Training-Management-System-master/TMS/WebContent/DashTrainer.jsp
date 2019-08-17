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
<style>
body
        {
        background: url(images/trainer.jpg) no-repeat center center fixed; 
         -webkit-background-size: cover;
          -moz-background-size: cover;
         -o-background-size: cover;
          background-size: cover;
           color:#00ffcc;
        }
        table
        {
        margin-top:100px;
        background: rgba(0,0,0,0.8);
        }
	th,td
	{
	     padding:10px;
	}
	p
	{
	text-align:center;
	font-size:25px;
	}
	a{
	text-decoration:none;
	color:#00ffcc;
	}
	.button {
    display: block;
    width: 150px;
    height: 40px;
    background: rgba(0,0,0,0.9);
    margin-left:1200px;
     margin-top:20px;
    padding-top: 5px;
    padding-bottom: 5px;
    border-radius: 5px;
    color: white;
    font-weight: bold;
}
a
{
text-decoration:none;
}
a:hover
{
background: rgba(0,0,0,0.4);
color:#00ffcc;
text-decoration:none;
}
</style>
<body>

       <a href="Trainer.jsp" class='button'><p>Home</p></a>
 <%
              String report=(String)request.getAttribute("report");
              String skillType=(String)request.getAttribute("skillType");
              String TraineeId=(String)request.getAttribute("TraineeId");
              out.println("<center>");
              out.println("<h1>Trainee Details</h1>");
              out.println("<div class='trans2'>");
              out.println("<table border='2'>");
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
				out.println("</td>");
				out.println("</tr>");
				out.println("</table>");
				out.println("</div>");
              %>
</body>
</html>