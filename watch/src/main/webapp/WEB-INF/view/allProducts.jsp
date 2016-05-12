<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="<spring:url value="/resources/css/bootstrap.min.css"/>">
  <script src="<spring:url value="/resources/js/jquery.min.js"/>"></script>
  <script src="<spring:url value="/resources/js/bootstrap.min.js"/>"></script>
  
  
  
<p> <h2 style="color:#3CGH42;"> Welcome to the shopping world of your Time!!!!!</h2> </p>





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



<div>
  <ul>
  <li><a class="active" href="home">Home</a></li>
    <li><a href="aboutus">Aboutus</a></li>
    <li><a href="productInfo">product info</a></li>
   <li><a href="login">Login</a></li>
   <li><a href="allProducts">Shopping</a></li>
   <li><a href="reg">RegisterHere</a></li>
   </ul>
               
   
  <br>
  </div>
 
</head>
<body>




<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

<div>


        <a href="productInfo"> <img src="<spring:url value="resources/images/watch1.jpg"/>"  alt="Flower"  width="250" height="280"/></a>
   
       <a href="productInfo"><img src="<spring:url value="resources/images/watch2.jpg"/>" alt="Flower"  width="250" height="280"/></a>
       
        <a href="productInfo"> <img src="<spring:url value="resources/images/watch3.jpg"/>" alt="Flower"  width="250" height="280"/></a>
      

        <a href="productInfo" > <img src="<spring:url value="resources/images/watch4.jpg"/>" alt="Flower"  width="250" height="280"/></a>
    <a href="productInfo" > <img src="<spring:url value="resources/images/watch5.jpg"/>" alt="Flower"  width="250" height="280"/></a>
   
 <a href="productInfo" > <img src="<spring:url value="resources/images/watch6.jpg"/>" alt="Flower"  width="250" height="280"/></a>
   
</div>






</body>
</html>


