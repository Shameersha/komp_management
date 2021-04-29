<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body style="background: #092756;">
<form action="Servlet" method="post">
<input type="hidden" name="action" value="interview">
<h1 style="text-align: center;font-size: 45px;color: white;">REGISTRATION</h1><BR><BR>
<div class="container" style="margin-left: 600px;">  


   <div class="form-group">
    <label class="col-md-4 control-label" for="name"><b>Company Name</b></label>  
  <div class="col-md-4">
  <input id="name" name="name" type="text" placeholder="Enter company name" class="form-control input-md" required="">
    
  </div>
</div><br>
<div class="form-group">
    <label class="col-md-4 control-label" for="name"><b>Position</b></label>  
  <div class="col-md-4">
  <input id="name" name="position" type="text" placeholder="Enter job role" class="form-control input-md" required="">
    
  </div>
</div><br>


<div class="form-group">
    <label class="col-md-4 control-label" for="email"><b>Stream</b></label>  
  <div class="col-md-4">
  <input id="email" name="stream" type="text" placeholder="Enter stream" class="form-control input-md" required="">
    
  </div>
</div><br>


<div class="form-group">
    <label class="col-md-4 control-label" for="password"><b>Year_Of_Pass</b></label>
  <div class="col-md-4">
    <input id="password" name="year" type="text" placeholder="Enter year of pass" class="form-control input-md" required="">
    
  </div>
</div><br>


<div class="form-group">
    <label class="col-md-4 control-label" for="contact"><b>Experience</b></label>  
  <div class="col-md-4">
  <input id="contact" name="experience" type="text" placeholder="Enter Experience" class="form-control input-md" required="">
    
  </div>
</div><br>


<div class="form-group">
    <label class="col-md-4 control-label" for="street"><b>Backlogs</b></label>  
  <div class="col-md-4">
  <input id="street" name="backlogs" type="text" placeholder="Enter preferred backlogs" class="form-control input-md" required="">
    
  </div>
</div><br><br>



<div class="form-group">
  <label class="col-md-4 control-label" for="signup"></label>
  <div class="col-md-4">
    <button style="background-color:green;" id="signup" name="signup" class="btn btn-success"><b style="color: white;">Create Session</b></button>
  </div>
</div>
    </div>






</form>

</body>
</html>