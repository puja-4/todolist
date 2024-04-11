<%@page import="DTO.Task"%>
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
background-image:url("https://cdn.pixabay.com/photo/2013/09/05/01/36/white-179005_1280.jpg");
background-size:100% 740px;
}
.contain1{
width:300px;
height:400px;
background-color:#FADB6F;
margin-left:5%;
margin-top:16%;
text-align:center;
color:white;
border-radius:15px;
box-shadow: 5px 5px 20px black;
border-radius: 10%;
}
.contain1.text1{
position:relative;
top:7%;
}
.inp1{
background-color:grey;
width:150px;
font-size:20px;
margin-top:40px;
color:white;
}
.inp2{
background-color:grey;
width:150px;
font-size:20px;
margin-top:40px;
color:white;
}
.inp3{
background-color:grey;
width:150px;
font-size:20px;
margin-top:40px;
color:white;
}


</style>
</head>
<body>
<%Task task = (Task)request.getAttribute("task");%>
<form action="updatetask" method="post">
<div class ="contain1">
<div class="text1">
task id:<input class="inp1" type="text" name="taskid" hidden="" value="<%= task.getTaskid()%>"><br>
task title:<input class="inp2" type="text" name="tasktitle" value="<%=task.getTasktitle()%>"><br>
task Description:<input class="inp3" type="text" name="taskdescription" value="<%=task.getTaskdescription()%>"><br>
Current task priority:<h4><%=task.getTaskpriority()%>"></h4><br>
Task priority:<br>
<label for="option1">
<input type="radio" id="optiona1" value="low" name="taskpriority">Low
</label><br>

<label for="option2">
<input type="radio" id="optiona2" value="medium" name="taskpriority">Medium
</label><br>

<label for="option3">
<input type="radio" id="optiona3" value="high" name="taskpriority">High
</label><br> 
Due Date:<input type="date" name="taskduedate"  value="<%=task.getTaskduedate()%>"><br><br>
Status:<input type="text" name="taskstatus" value="<%=task.getTaskstatus()%>"><br><br>
<input type="text" name="userid" value="<%=task.getUserid() %>" style="visibility:hidden;"><br><br>
<input type ="submit">
</div>
</div>
</form>

</body>
</html>