<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*" import="bean.reg"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
table, th, td {

margin-top:40px;
margin-left:200px;

  border: 6px solid black;
  border-collapse:collapse;
  width:50%;
  
}
tr{
height:50px;
width:30%;
color:white;
}
th,td{
padding:15px;
text-align:left;

}
th{
background-color:green;
height:40px;}
</style>
</head>
<body style="background: #092756;">
<table>
<tr><th>STUDENT_ID</th><th>NAME</th><th> EMAIL</th><th>PHONE</th><th>stream</th><th>10th(%)</th><th>12th(%)</th><th>BACKLOGS</th><th>YEAR_OF_PASS</th>    </tr>
<%
ArrayList <reg> ulist=(ArrayList<reg>)session.getAttribute("userlist");
for(reg r:ulist)
{
%>
<tr>
<td><%=r.getId() %></td>
<td><%=r.getName() %></td>
<td><%=r.getEmail() %></td>
<td><%=r.getPhone() %></td>
<td><%=r.getStream() %></td>
<td><%=r.getTenth() %></td>
<td><%=r.getTwelth() %></td>
<td><%=r.getBacklogs() %></td>
<td><%=r.getYear() %></td>

                   
</tr>
<%} %>
</table>


</body>
</html>