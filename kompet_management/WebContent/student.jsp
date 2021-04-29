<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background: #092756;">
<form style="color:white;margin-top:100px;margin-left:550px;" action="Servlet" method="post">
B1<input type="radio" name="rad" value="B1"><br><br><br>
B2<input type="radio" name="rad" value="B2"><br><br><br>
B3<input type="radio" name="rad" value="B3"><br><br><br>

<%-- <select name="select1">
<option>B1</option>
<option>B2</option>
<option>B3</option>
</select> --%>
<input type="hidden" name="action" value="join">
<button style="color:green;">SUBMIT</button>



</form>

</body>
</html>