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
   </ul>
               
   
  <br>
  </div>

</div>

      
<h2>Customer Information</h2>
<form:form method="POST" action="./addCustomer" commandName="cust">
<form:errors path="*" cssClass="errorblock" element="div" />
   <table>
  
    <tr>
        <td><form:label path="userName">User Name</form:label></td>
        <td><form:input path="userName" /></td>
        <td><form:errors path="userName" cssClass="error" /></td>
    </tr>
    <tr>
        <td><form:label path="password">Password</form:label></td>
        <td><form:password path="password" /></td>
        <td><form:errors path="password" cssClass="error" /></td>
    </tr>
     <tr>
        <td><form:label path="fullName">Full Name</form:label></td>
        <td><form:input path="fullName" /></td>
        <td><form:errors path="fullName" cssClass="error" /></td>
    </tr>
    <tr>
        <td><form:label path="emailId">Email Id</form:label></td>
        <td><form:input path="emailId" /></td>
        <td><form:errors path="emailId" cssClass="error" /></td>
    </tr>
    
    <!-- 
    <tr>
        <td><form:label path="enabled">Enabled</form:label></td>
        <td><form:input path="enabled" /></td>
        <td><form:errors path="enabled" cssClass="error" /></td>
    </tr>
     -->
    <tr>
      <td colspan="2">
            <input type="submit" value="SAVE"/>
            <input type="reset" value="Clear Data"/>
        </td>
    </tr>
    
</table>  
</form:form>
</body>
</html>
   