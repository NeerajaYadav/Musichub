<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="myAlbum">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Product Registration Form</title>
<link rel="stylesheet" 	href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />">
<link href="resources/includes/css/bootstrap-glyphicons.css" 	rel="stylesheet">
<script src="<c:url value="/resources/includes/js/jquery-1.8.2.min.js" />"></script>
<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/angular-1.5.5/angular.min.js" />"></script>

</head>


<body><div class="container" id="main">

		<div class="navbar navbar-fixed-top">
			<div class="container">
				<div class="nav-collapse navbar-responsive-collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="./">Home</a></li>
						<li><a href="aboutus">ABOUT US</a></li>
						<li><a href="signUp">Sign Up </a></li>
						<li><a href="signup"><span class="glyphicon glyphicon-user"></span> SignUp </a></li>
						<li><a href="login"><span class="glyphicon glyphicon-off"></span> Login </a></li>
					</ul>
				</div>
			</div>
			<!-- end Container -->
		</div>
		<!-- Nav bar Ends -->
	</div>
	 <div class="container">
		<div class="jumbotron">
			<p style="float: left;">
			 Update Product Page
			</p>
		</div> 

<form:form action="saveCategory" method="post">
	<table>
 	<tr > <td> <form:label path="pid">Product Id:</form:label></td><td><form:input path="pid" /></td></tr>
	<tr> <td> <form:label path="pname">Product Name:</form:label></td><td><form:input path="pname" /></td></tr>
	<tr> <td> <form:label path="price">Product Price</form:label></td><td><form:input path="price" /></td></tr>
	
	
 	<tr><td></td><td><input type="submit" value="SAVE"/></td></tr>
	</table>
</form:form>
 </div>
</body>
</html>