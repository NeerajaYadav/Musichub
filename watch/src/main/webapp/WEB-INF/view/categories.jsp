<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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


<p> <h2 style="color:#3CGH42;"> Welcome to the shopping world of your Time!!!!!</h2> </p>

<div>
  <ul>
  <li><a class="active" href="home">Home</a></li>
    <li><a href="aboutus">Aboutus</a></li>
   <li><a href="logout">Logout</a></li>
  </ul>
               
   
  <br>
  </div>


<h2>Your product details Are As Follows:</h2>
 
 <table class="table">
			<thead>
				<tr>
					<td><th>Product Id</th></td>
					<td>Product Name</td>
					<td>Price Tag</td>
				</tr>
			</thead>
			<tbody class="table-hover">
			<c:forEach items="${ls}" var="data">
				<tr>
					<td>${data.pid}</td>
					<td>${data.pname}</td>
					<td>${data.price}</td>
					<td><a name="_eventId_addtocart" href="addcart/${data.pid}">Add to Cart</a></td>
					<td><input type="text" name="_flowExecutionKey" value="${flowExecutionKey}"></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>

 
 
 
 
 <!-- 
 <table class="table">
<thead>
 <tr>
 <td>Product Id</td>
 <td>Product Name</td>
 <td>Product Price</td>
 </tr>
 </thead>
 <tbody class="table-hover">
<c:forEach var="i" items="${ls}">
   <tr>
   <td><c:out value="${i.pid}"/></td>
    <td> <c:out value="${i.pname}"/></td>
     <td><c:out value="${i.price}"/></td>
  		<td><a href="productupdate">Update</a></td>
   		<td><a href="deleteProducts/${i.pid}">Delete</a></td>

   
      </tr>
    
</c:forEach> 
 </tbody>
		</table>
		 -->
<!--  
    <tr>
        <td>User Name</td>
        <td>${userName}</td>
    </tr>
     <tr>
        <td>Email</td>
        <td>${emailId}</td>
    </tr>
    
    
     <tr>
        <td>Full Name</td>
        <td>${fullName}</td>
    </tr>
    -->

</body>
</html>