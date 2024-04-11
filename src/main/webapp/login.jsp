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
background-image:url("https://cdn.pixabay.com/photo/2018/01/11/21/27/desk-3076954_1280.jpg");
background-size:100% 740px;
}
.contain{
width:300px;
height:300px;
background-color:#A9A9A9;
margin-left:36%;
margin-top:6%;
text-align:center;
color:white;
border-radius:15px;
box-shadow: 5px 5px 20px black;
border-radius: 10%;
}
.contain.text{
position:relative;
top:7%;
}
.inp1{
border:none;
background-color:black;
border-bottom:3px solid white;
width:250px;
font-size:20px;
margin-top:40px;
outline:none;
color:white;
}
.inp2{
border:none;
background-color:black;
border-bottom:3px solid white;
width:200px;
font-size:20px;
margin-top:40px;
outline:none;
color:white;
}

</style>


</head>
<body>
<form action="userlogin" method="post">
<div class ="contain">
<div class="text">

Email:<input class="inp1" type="text" name="email"><br><br>
password:<input class="inp2" type="text" name="password"><br><br>
<input type ="submit">
<%String message =(String)request.getAttribute("message"); %>
<%if(message !=null) {%>
<h3><%=message %></h3>
<%} %>
</div>
</div>



</form>

</body>
</html>