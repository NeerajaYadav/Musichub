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
   
<style>  
.errorblock {  
 color: #ff0000;  
 background-color: #ffEEEE;  
 border: 3px solid #ff0000;  
 padding: 8px;  
 margin: 16px;  
}  
</style>  
</head>  
<body onload='document.f.j_username.focus();'>  
 <h3>Login with Username and Password (Custom Login Page)</h3>  
   
 <c:if test="${not empty error}">  
  <div class="errorblock">  
   Your login attempt was not successful, try again.  
 Caused :  
   ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}  
  </div>  
 </c:if>  
   
 <form name='f' action="<c:url value='j_spring_security_check' />"  
  method='POST'>  
   
  <table>  
   <tr>  
    <td>User Name:</td>  
    <td><input type='text' name='j_username' value=''/>  
    </td>  
   </tr>  
   <tr>  
    <td>Password:</td>  
    <td><input type='password' name='j_password' value=''/>  
    </td>  
   </tr>  
   <tr>  
    <td colspan='2'><input name="submit" type="submit"  
     value="SUBMIT"/>  
      <input name="reset" type="reset" value="RESET" />
    </td>  
   </tr>  
    
  </table>  
   
 </form>  
</body>  
</html>  