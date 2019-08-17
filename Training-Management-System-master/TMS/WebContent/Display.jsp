<%@page import="org.tms.beans.Traineecls"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>tms</title>
</head>
<style>
table
{
margin-top:110px;
background: rgba(0,0,0,0.8);
}
th,td
	{
	     padding:10px;
	}
	h2
	{
	margin-top:70px;
	}
	P
	{
	text-align:center;
	}
	.button {
    display: block;
    width: 150px;
    height: 40px;
    background: rgba(0,0,0,0.9);
    
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
}
 body
        {
       /* background-image:url("images/trainer.jpg");*/
         background: url(images/trainer.jpg) no-repeat center center fixed; 
         -webkit-background-size: cover;
          -moz-background-size: cover;
         -o-background-size: cover;
          background-size: cover;
          color:white;
        /*background-position: center;
  		background-repeat: no-repeat;
  		background-size: cover;*/
        }
</style>
<body>
 
  <center><h2>DETAILS</h2></center>
  <br/>
<%
    Traineecls tr=(Traineecls)request.getAttribute("userobj");
out.println("<center>");
out.println("<table border='1'>");
	out.println("<tr><th>");
	out.println("USERID");
	out.println("</th>");
	out.println("<th>");
	out.println("DATE");
	out.println("</th>");
	out.println("<th>");
	out.println("Vertical");
	out.println("</th>");
	out.println("<th>");
	out.println("Location");
	out.println("</th>");
	out.println("<th>");
	out.println("Phone");
	out.println("</th>");
	out.println("<th>");
	out.println("Role");
	out.println("</th>");
	out.println("<th>");
	out.println("Designation");
	out.println("</th>");
	out.println("</tr>");
	out.println("<tr><td>");
	out.println(tr.getUserId());
	out.println("</td>");
	out.println("<td>");
	out.println(tr.getDate());
	out.println("</td>");
	out.println("<td>");
	out.println(tr.getVertical());
	out.println("</td>");
	out.println("<td>");
	out.println(tr.getLocation());
	out.println("</td>");
	out.println("<td>");
	out.println(tr.getPhone());
	out.println("</td>");
	out.println("<td>");
	out.println(tr.getRole());
	out.println("</td>");
	out.println("<td>");
	out.println(tr.getDesignation());
	out.println("</td>");
	out.println("</tr>");
	out.println("</table>");
	out.println("<center>");
%>
<br><br>
 <a href="home.jsp" class="button"><p>BACK TO HOME</p></a>
 </body>
</html>