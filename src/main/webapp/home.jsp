<%@page import="DTO.Task"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Base64"%>
<%@page import="DTO.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style >


*{
margin:0%;
padding:0%;
}
body{
background-image:url("https://cdn.pixabay.com/photo/2015/11/03/08/55/laptop-1019782_1280.jpg");
background-size:100% 740px;
}

table,td,tr{
border:1px solid black;
border-collapse:collapse;

}
table{
width:100%;
height:80%;
text-align:center;
}
td{
vertical-align:center;
}
tr:hover{
background-color:#67823a;
color:white;
}
h3{
text-align:center;
}
img{
display:block;
margin-left:45%;
}
a{
display:block;
margin-left:48%;
}


</style>

</head>
<body>
<% User user=(User)request.getSession().getAttribute("user"); %>
<% String name=user.getUsername(); %>
<% String email= user.getUseremail(); %>

<h3>Hello <%=name %></h3>
<h3>Email <%=email %></h3>

<% String image = new String(Base64.getEncoder().encode(user.getUserimage())); %>
<img alt="" src="data:image/jpeg;base64,<%=image %> "width="150" height="100">

<a href="addtask.jsp">AddTask</a><br>

<h3>--:*Tasks*:--</h3><br>
<%List<Task> tasks = (List)request.getAttribute("tasks") ;%>

<table border="5px">
<tr border="5px">
<th>id</th>
<th>title</th>
<th>description</th>
<th>priority</th>
<th>due date</th>
<th>status</th>
<th>delete</th>
<th>Edit</th>
</tr>
<% int num = 1; %>
<%for(Task task :tasks){ %>

<tr border="5px">
<td><%=task.getTaskid()%></td>
<td><%=task.getTasktitle()%></td>
<td><%=task.getTaskdescription()%></td>
<td><%=task.getTaskpriority()%></td>
<td><%=task.getTaskduedate()%></td>
<td><%=task.getTaskstatus()%></td>
<td ><a href="delete?taskid=<%=task.getTaskid()%>">delete</a></td>
<td ><a href="edit?taskid=<%=task.getTaskid()%>">edit</a></td>

</tr>
<% num +=1; %>
<%} %>




</table>
<a href="Logout">Logout</a>

</body>
</html>