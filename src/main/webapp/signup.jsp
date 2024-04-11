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
background-image:url("https://cdn.pixabay.com/photo/2020/03/27/17/56/toilet-paper-4974461_1280.jpg");
background-size:100% 740px;
}
.contain{
width:300px;
height:300px;
background-color:#A9A9A9;
margin-left:15%;
margin-top:15%;
text-align:center;
color:white;
border-radius:15px;
box-shadow: 5px 5px 20px black;
border-radius: 10%;
}
.contain.text{
position:relative;
top:10%;

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
<form action="saveuser" method="post" enctype="multipart/form-data">
<div class ="contain">
<div class="text">
id:<input type="text" name="id"><br><br>
name:<input type="text" name="name"><br><br>
email:<input type="email" name="email"><br><br>
contact:<input type="text" name="contact"><br><br>
password:<input type="text" name="password"><br><br>
image:<input type="file" name="image"><br><br>
<input type="submit">
</div>
</div>
</form>


</body>
</html>