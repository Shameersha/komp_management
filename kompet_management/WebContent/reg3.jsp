<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <title></title> 
  
    <meta charset="utf-8"> 
    <meta name="viewport"
        content="width=device-width, initial-scale=1"> 
  
    <link rel="stylesheet"
        href= 
"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
    <style>
      
       .vertical-scrollable> .row {
          position: absolute;
            
          height:600px;
          width: 30%;
           top: 100px;
          
          left: 30px;
           
          overflow-y: scroll; 
           
        }
        .col-sm-8 {
        
            height:200px;
            color: white; 
            font-size: 24px; 
            padding-bottom: 20px; 
            padding-top: 18px; 
            
        } 
          
       .col-sm-8:nth-child(2n+1) { 
            background: #3b3663; 
        } 
         .col-sm-8:nth-child(2n+2) { 
            background:#3b3663;
        }
        .col-sm-8:hover {
  background-color: #333333;
  color:#ffffff;
}
        
        
        
          
       
  
    </style> 
</head> 
  
<body style="background: #092756;">
 <center> 
        <div class="container"> 
  
            <h1 style=
       "text-align:center;color:black;"> 
             
        </h1> 
            
            <div class="container vertical-scrollable"> 
                <div class="row text-center"> 
                    <div class="col-sm-8">
                  <a href="student.jsp">Student Details</a></div> 
                     
                    <div class="col-sm-8">
                   <a href="interview.jsp">Interview Session</a></div> 
                    <div class="col-sm-8">
                    Interview Status</div> 
                    
                    
                </div> 
            </div> 
        </div> 
    </center> 

</body>
</html>