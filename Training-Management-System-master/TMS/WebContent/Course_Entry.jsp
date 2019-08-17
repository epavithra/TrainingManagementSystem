<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Training Management System</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <style>#logout{ 
        margin-left:810px;
        margin-top:6px;
        }
        a
        {
           font-size: 20px;
           color:white;
        }
        #nav-link
        {
            color:white;
        }
       </style>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
				<ul class="navbar-nav">
                   <li>  <a class="navbar-brand" >Training Management System</a></li>   
                  <li class="nav-item">
                    <a class="nav-link">HOME</a>
                  </li>
                  
                  <li id="logout">
                        <a href="index.jsp">Logout</a>
                    </li>  
                </ul>
              </nav><br/><br/>
              <form action="./course" method="post">
               
                   <label>
                      Trainee id * : <input type="text" name="p_uid" size="30"  />
                    </label><br />
                    <label>
                     Trainee Name * : <input type="text" name="name" size="30" required/>  
                    </label><br />
                    <label>
                     Trainer Name * : <input type="text" name="trainer_name" size="30" required/>  
                    </label><br />
                    
                   <label>Skill Type* :<select name="skill_type" required>
    					<option value="">Choose</option>
   						 <option value="Personality_development">Personality_development</option>
    						<option value="Basic_IT">Basic Information Technology</option>
    						<option value="Tech_in_bank">Technology Elements In Banking</option>
  						</select></label><br/>
                    <label>
                        
                         Course_name * : <input type="text" name="course_name" size="30" required/>  
                    </label><br />
                    <label>
                         Hands on status * : <select name="Hands_on_status" required>
    					<option value="">Choose</option>
   						 <option value="completed">completed</option>
    						<option value="Not-completed">Not-completed</option>
    						<option value="In-Progress">In-Progress</option>
  						</select></label><br/>  
                 
                    <label>
                        Assessment scores * : <input type="text" name="assessment_scores" size="30" required/>  
                    </label><br />
                    <label>
                        Evaluation comments* : <input type="text" name="Evaluation_comments" size="30" required/>  
                    </label><br />
                   <!--  <label>Role* :<select name="role" class="form-control" required>
    					<option value="">Choose</option>
   						 <option value="trainer">Trainer</option>
    						<option value="trainee">Trainee</option>
  						</select></label>
  <label>Trainer Name:<input class="form-control"  name="trainer" type="text" disabled></label><br/>-->
                    <input type="submit" value="submit" />
                </form>
</body>
</html>