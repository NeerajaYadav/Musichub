<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Insert title here</title>
</head>
<body>
<h1>Successfully Inserted</h1>


<h2>Your details Are As Follows:</h2>
 <h2>Product Details</h2>
 <table>

 <tr>
 <th>Product Id</th>
 <th>Product Name</th>
 <th>Product Price</th>

 
 </tr>
<c:forEach var="i" items="${ls}">
   <tr>
   <td><c:out value="${i.pid}"/></td>
      <td> <c:out value="${i.pname}"/></td>
      <td><c:out value="${i.price}"/></td>
  <td><a href="productupdate">Update</a></td>
   <td><a href="deleteProducts/${i.pid}">Delete</a></td>

   
      </tr>
    
</c:forEach> 
 
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
</table>
</body>
</html>