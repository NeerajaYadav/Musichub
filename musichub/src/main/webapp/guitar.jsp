<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>


<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) 
{
    background-color: #111;
}

.active {
    background-color: #4CAF50;
}

</style>


</head>
<body>
<ul>
  <li><a href="home.jsp">Home</a></li>
  <li><a href="login.jsp">Login</a></li>
  <li><a href="reg.jsp">New user Register Here</a></li>
  <li style="float:right"><a class="active" href="aboutus.jsp">About</a></li>
</ul>



<h1>Product Name: Guitar</h1>

<div class="item active">
      <img src="images/guitar.jpg" alt="Flower" align="middle"  width="500" height="600">
      
     </div>


<h1>Product Name: Guitar</h1>
<h2>Product Color:Pink</h2>
<h3>Product price: RS.25000</h3>
</body>
</html>