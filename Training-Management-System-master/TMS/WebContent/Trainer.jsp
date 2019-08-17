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
  <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        
  

  <style>#logout{ 
        margin-left:610px;
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
        .progress
        {
        width:700px;
        height:400px;
        margin-left:500px;
        margin-top:130px;
        color:#00ffcc;
        background:none;
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
        .mark
        {
        background:none;
        color: #00ffcc;
        }
        
        .round1 
	{
    	border-radius: 5px;
    	background-color:#F5F5F5;  	
    	margin-top:10px;
    	color:black;
	}
	.round 
	{
    	border-radius: 15px;
    	background-color:#F5F5F5;
    	width: 100px;
    	margin-top:10px;
    	color:black;
	}
	.trans
	{
	width:500px;
	height:520px;
	background: rgba(0,0,0,0.6);
	}

	.trans1
	{
	width:480px;
	height:320px;
	background: rgba(0,0,0,0.6);
	margin-left:-20px;
	}
	​​
        </style>
        <script>
        $(window).load(function() {
            $("div.home").show();
            $("div.mark").hide();
            $("div.progress").hide();
        });
        $(document).ready(function() {
           
            $("#first").click(function() {
            	 $("div.home").show();
            	    $("div.mark").hide();
            	    $("div.progress").hide();
            	    
            });
            $("#second").click(function() {
           	 $("div.home").hide();
           	    $("div.mark").show();
           	 $("div.progress").hide();
           	   
           });
            $("#third").click(function() {
              	 $("div.home").hide();
              	    $("div.mark").hide();
              	 $("div.progress").show();
              	   
              });
        });
        
        </script>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
				<ul class="navbar-nav">
                   <li>  <a class="navbar-brand" href="#">Training Management System</a></li>   
                  <li class="nav-item">
                    <a class="nav-link" id="first">HOME</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" id="second" >MarkEntry</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" id="third" >View Progress</a>
                  </li>
                  <li id="logout">
                        <a href="index.jsp">Logout</a>
                    </li>  
                </ul>
              </nav>
              <div class="home">
              <center><br/><h1>Welcome!!! Trainer</h1></center>
              </div>
              <div class="mark">
               </nav><br/><br/>
             <center> <form action="./course" id="form" method="post">
             <div class="trans">
               <h1>COURSE ENTRY</h1>
                   <label>
                      <b>Trainee id  :</b> <input type="text" name="p_uid" class="round1" size="30" required />
                    </label><br />
                    <label>
                     <b> Trainee Name  : </b><input type="text" name="name" class="round1" size="30" required/>  
                    </label><br />
                    <label>
                      <b>Trainer Name  : </b><input type="text" name="trainer_name" class="round1" size="30" required/>  
                    </label><br />
                    
                   <label> <b>Skill Type :</b><select name="skill_type" class="round1" required>
    					<option value="">Choose</option>
   						 <option value="Personality_development">Personality_development</option>
    						<option value="Basic_IT">Basic Information Technology</option>
    						<option value="Tech_in_bank">Technology Elements In Banking</option>
  						</select></label><br/>
                   <label>
                        
                         <b> Course_name  :</b> <input type="text" name="course_name" class="round1" size="30" required/>  
                    </label><br />
                  <label>
                         <b> Hands on status  : </b><select name="Hands_on_status" class="round1" required>
    					<option value="">Choose</option>
   						 <option value="completed">completed</option>
    						<option value="Not-completed">Not-completed</option>
    						<option value="In-Progress">In-Progress</option>
  						</select></label><br/>  
                 
                   <label>
                         <b>Assessment scores  :</b> <input type="text" name="assessment_scores" class="round1" size="30" required/>  
                    </label><br />
                   <label>
                       <b>  Evaluation comments :</b> <input type="text" name="Evaluation_comments" class="round1" size="30" required/>  
                    </label><br /><br/>
                    <input type="submit" class="round" value="submit" />
                </form></div><center></center>
              </div>
              <div class="progress">
                 <form action="TrainerSearchTrainee" method="post">
                <center><div class="trans1">
                <center><h1>Progress Details</h1><br/>
                    <label><b><h5> Trainee Id: </h5></b><input type="text" size="30" class="round1" name="traineeId" required></label><br/>
                    <label><b><h5> Skill Type:</h5> </b><select name="skilltype" class="round1" required>
                    <option>Choose</option>
                      <option value="Personality_development">Personality_development</option>
                      <option value="BasicIt">BasicIt</option>
                      
                    </select></label></center><br/>
                    <input type="submit" value="submit" class="round">
                 </div></form></center>
              </div>
</body>
</html>