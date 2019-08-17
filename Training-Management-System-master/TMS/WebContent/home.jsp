
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Training Management System</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
   <style type="text/css">
      .login-form {
              width: 340px;
       margin: 50px auto;
       }
    .login-form form {
       margin-bottom: 15px;
        background: #f7f7f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);        
        padding: 30px;
    }
    .login-form h2 {
        margin: 0 0 15px;
    }
    .form-control, .btn {
        min-height: 38px;
        border-radius: 2px;
    }
    .btn {        
        font-size: 15px;
        font-weight: bold;
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
      .dropdown
      {
      margin-left:20px;
      margin-top:10px;
      }
      .round 
	{
    	border-radius: 15px;
    	background-color:#F5F5F5;
    	width: 100px;
    	margin-top:10px;
    	color:black;
	}
	.round1 
	{
    	border-radius: 5px;
    	background-color:#F5F5F5;  	
    	margin-top:10px;
    	color:black;
	}
	#logout{ 
        margin-left:700px;
        margin-top:10px;
        }
        body
        {
        background-image:url("images/homepage.jpg");
        color:white;
        }
        .search,.search1
        {
        margin-top:170px;
        }
        .trans4
	{
	width:480px;
	height:550px;
	background: rgba(0,0,0,0.3);
	
	}
	.trans5
	{
	width:320px;
	height:190px;
	background: rgba(0,0,0,0.5);
	
	}
	.trans6
	{
	width:320px;
	height:190px;
	background: rgba(0,0,0,0.5);
	
	}
	.des {
    display: block;
    width: 60px;
    height: 40px;
     margin-top:0px;
      margin-bottom:10px;
    padding-top: 5px;
    padding-bottom: 5px;
    border-radius: 5px;
    color: white;
    font-weight: bold;
}
a:hover
{
color:#00ffcc;
text-decoration:none;
}
</style>
<script>
$(document).ready(function(){
  $('.dropdown-submenu a.test').on("click", function(e){
    $(this).next('ul').toggle();
    e.stopPropagation();
    e.preventDefault();
  });
});
$(window).load(function() {
    $("div.home").show();
    $("div.register").hide();
    $("div.search").hide();
    $("div.search1").hide();
});
$(document).ready(function() {
   
    $("#second").click(function() {
    	 $("div.home").hide();
    	    $("div.register").show();
    	    $("div.search").hide();
    	    $("div.search1").hide();
    });
    $("#first").click(function() {
   	 $("div.home").show();
   	    $("div.register").hide();
   	    $("div.search").hide();
   	 $("div.search1").hide();
   });
    $("#third").click(function() {
   	 $("div.home").hide();
   	    $("div.register").hide();
   	    $("div.search").show();
   	 $("div.search1").hide();
   });
    $("#fourth").click(function() {
      	 $("div.home").hide();
      	    $("div.register").hide();
      	    $("div.search").hide();  
      	  $("div.search1").show();
      });
});

$(document).ready(function(){
	 $('select[name="role"]').change(function(){
	   $('input[name="trainer"]').prop('disabled',this.value != "trainer" ?false:true);
	 });
	});
	
$(document).ready(function() {
    $("#id").change(function() {

           $.ajax({
                 type : 'post',
                 url : 'DbCheck',
                 data : {
                        id : $("#id").val()
                 },
                 success : function(responseText) {
                        $("#errMsg").text(responseText);

                        if (responseText != "") {
                               $("#id").focus();
                        }

                 }

           });

    });
});
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
</head>
<body>
<div class="header">
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                <ul class="navbar-nav">
                   <LI>  <a class="navbar-brand" >Training Management System</a></LI>   
                  <li class="nav-item">
                    <a class="nav-link" id="first">HOME</a>
                  </li>
                  
                 
                  <li class="nav-item ">
                    <a class="nav-link" id="second" >Registration</a>
                  </li>
             <li> <div class="dropdown">
    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Search
   </button>
    <ul class="dropdown-menu">
      <li><a tabindex="-1" id="third" >Trainee</a></li>
      <li><a tabindex="-1" id="fourth" >Trainer</a></li>
    </ul>
  </div>  </li>          
             <li id="logout">
                        <a href="index.jsp" class="des">Logout</a>
                    </li>  

 
                
                 </div>
                
              </nav>
 </div>
              <div class="home" >
              <center><h1>Welcome!!! Admin</h1></center>
              </div>
              <div class="register">
            <div id="trainee">
       <center>
                <div class="trans4"><h1> Registration Form</h1>
   
				<form action="./Regservlet" method="post">
               
     				
                    <label> Associate id  : <input type="text" name="userId" class="round1"
                           id="id" size="20" required/><br/><span id="errMsg" style="color:red"></span></label><br/>
                    <label>
                        Password  : <input type="password" name="password" class="round1" size="20" required/>  
                    </label><br />
                    <label>
                         First Name  : <input type="text" name="fname" class="round1" size="20" required/>  
                    </label><br />
                    <label>
                         Last Name : <input type="text" name="lname" class="round1" size="20"required/>  
                    </label><br />
                    <label>
                         Hire Date : <input type="date" name="date" class="round1"  size="20" required/>  
                   </label><br />
                    <label>
                         Vertical : <input type="text" name="vertical" class="round1" size="20" required/>  
                    </label><br />
                    <label>
                         Designation  : <input type="text" name="Designation" class="round1" size="20" required/>  
                    </label><br />
                    <label>
                         Location  : <input type="text" name="Location" class="round1" size="20" required/>  
                    </label><br />
                    <label>
                         Phone  : <input type="text" name="phone" class="round1" size="20" required/>  
                    </label><br />
                    <label style="margin-top:10px;">Role :<select name="role" class="form-control" required>
    					<option value="">Choose</option>
   						 <option value="trainer">Trainer</option>
    						<option value="trainee">Trainee</option>
  						</select></label>
  <label>Trainer Name:<input class="form-control"  name="trainer" type="text" disabled></label><br/>
                    <input type="submit" class="round" value="submit" />
                </form></div>
           </center>     
      </div>
              </div>
              <div class="search">
              <div class="container">
        <center><div class="trans5"><form action="TrainerServlet" method="post">
         <br/><label>Enter Trainee Id:</label><br>
         <input type="text" class="round1"  name="userId"><br/><br/>
         <input type="submit" class="round" value="search">
        </form></div></center>
    </div>
              </div>
              <div class="search1">
              <div class="container">
        <center><div class="trans6"><form action="TrainerServlet" method="post">
         <br/><label>Enter Trainer Id:</label><br>
         <input type="text" class="round1" name="userId"><br/><br/>
         <input type="submit" class="round" value="search">
        
        </form></div></center>
    </div>
              </div>

</body>
</html>