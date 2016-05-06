<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import=" org.json.JSONObject, org.json.JSONException, java.util.*    "%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="myApp">
<head>

 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
       <link rel="stylesheet" href="<spring:url value="/resources/css/bootstrap.min.css"/>">
  <script src="<spring:url value="/resources/js/jquery.min.js"/>"></script>
  <script src="<spring:url value="/resources/js/bootstrap.min.js"/>"></script>
  <script src = "<spring:url value="/resources/js/angular.min.js"/>"></script>
  
 <!--  <script type="text/javascript" src="/app.js"></script>  -->
 <style>
 input[type=text] {
    width: 130px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('searchicon.png');
    background-position: 10px 10px; 
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
    width: 100%;
}
</style>
 
 
 
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

<body >
<div class="container" id="main">


<ul>
  <li><a href="home">Home</a></li>
  <li><a href="login">Login</a></li>
  <li><a href="reg">New user Register Here</a></li>
  <li><a href="allProducts">All Products</a></li>
  <li style="float:right"><a class="active" href="aboutus">About</a></li>
</ul>


  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

</div>
 
<form>
  <input type="text" name="search" placeholder="Search..">
</form>

    
    <style>
    table {
  border: 1px solid #666;   
    width: 100%;
}
th {
  background: #f8f8f8; 
  font-weight: bold;    
    padding: 2px;
}
    </style>
    
    
   
<table>
    <tr>
        <th>ProductId</th>
        <th>ProductName</th>
        <th>ProductPrice</th>
    </tr>
    <tr ng-repeat="resources in names">
     <td>{{resources.pid}}</td>
    <td>{{resources.pname}}</td>
    <td>{{resources.price}}</td>
     </tr>
</table>

<script>

${data}

 angular.module('myApp', []).controller('nameCtrl', function($scope)
		{
	$scope.names= ${data};
		});



</script>

 
</body>
</html>