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
background-image:url("https://cdn.pixabay.com/photo/2018/05/13/17/08/notebook-3397136_960_720.jpg");
background-size:100% 740px;
}
.contain1{
width:300px;
height:400px;
background-color:none;
margin-left:42%;
margin-top:10%;
text-align:center;
color:black;
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
<form action="addtask" method="post">
<div class ="contain1">
<div class="text1">
task id:<input class="inp1" type="text" name="taskid" required><br>
task title:<input class="inp2" type="text" name="tasktitle" required><br>
task Description:<input class="inp3" type="text" name="taskdescription" required><br>
Options:<br>
<label for="option1">
<input type="radio" id="optiona1" value="low" name="taskpriority">Low
</label><br>

<label for="option2">
<input type="radio" id="optiona2" value="medium" name="taskpriority">Medium
</label><br>

<label for="option3">
<input type="radio" id="optiona3" value="high" name="taskpriority">High
</label><br>
Due Date:<input type="date" name="taskduedate"><br><br>
<input type ="submit">
</div>
</div>
</form>

</body>
</html>