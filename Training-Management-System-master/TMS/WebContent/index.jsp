
<%@include file="header.jsp"%>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                <!-- Brand -->
                
              
                <!-- Links -->
                <ul class="navbar-nav">
                   <LI>  <a class="navbar-brand" href="#">Training Management System</a></LI>   
                  
                  <li id="logout">
                        <a href="#">Logout</a>
                    </li>  
                </ul>
              </nav>
<div class="login-form">
    <form action="LoginServlet" method="post">
        <h2 class="text-center">Log in</h2>       
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Username" required="required" name="userId">
        </div>
        <div class="form-group">
            <input type="password" class="form-control" placeholder="Password" required="required" name="password">
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block">Log in</button>
        </div>
        <div class="clearfix">
            <label class="pull-left checkbox-inline"><input type="checkbox"> Remember me</label>
        </div>        
    </form>
</div>
</body>
</html>