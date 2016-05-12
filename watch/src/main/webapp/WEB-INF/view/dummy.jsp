<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
       <link rel="stylesheet" href="<spring:url value="/resources/css/bootstrap.min.css"/>">
  <script src="<spring:url value="/resources/js/jquery.min.js"/>"></script>
  <script src="<spring:url value="/resources/js/bootstrap.min.js"/>"></script>
  <script src = "<spring:url value="/resources/js/angular.min.js"/>"></script><style>
table, th , td {
  border: 1px solid grey;
  border-collapse: collapse;
  padding: 5px;
}
table tr:nth-child(odd) {
  background-color: #f1f1f1;
}
table tr:nth-child(even) {
  background-color: #ffffff;
}
</style>
</head>
<body>
<div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="index">
                        Home
                    </a>
                </li>
                <li>
                    <a href="productInfo?product=all">All Categories</a>
                </li>
                <li>
                    <a href="productInfo?product=product1">Analogue Watches</a>
                </li>
                <li>
                    <a href="productInfo?product=product2">Digital Watches</a>
                </li>
                <li>
                    <a href="productInfo?product=product3">Smart Watches</a>
                </li>
              
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->
    

 

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                         <div class="row">

   <h1>Add Products</h1>

              
                <hr>
            <form:form method="GET" action="addprod">  
      <table>  
       
       <tr>  
           <td><form:label path="name">Product Name:</form:label></td>  
           <td><form:input path="name" value=""/></td>  
       </tr>  
       <tr>  
           <td><form:label path="type">Product Type</form:label></td>  
           <td><form:select path="type">
					<form:option value="Analogue" label="Analogue Watches" />
					<form:option value="Digital" label="Digital Watches" />
					<form:option value="Smart" label="Smart Watches" />
											
				</form:select></td>  
       </tr>  
     
     
          <tr><td colspan=2>
    <c:if test="${!empty product.name}">
                <input type="submit"
                    value="Edit"/>
            </c:if>
            <c:if test="${empty product.name}">
                <input type="submit"
                    value="Add"/>
            </c:if>
            </td>
        </tr>  
   </table>   
  </form:form>
  <hr>
  
   	<div ng-app="countryApp" ng-controller="prdCtrl">
      
      	<center>
      	Search:<input ng-model="searchText" /><br/>
      	<hr/>
      	<table>
      	<tr ng-repeat="product in products |filter:searchText">
      	<td>{{product.id}}</td>
      	<td>{{product.name}}</td>
      	<td><a href="#" class="btn btn-default">Update</a></td>
      	<td><a href="delprod/{{product.id}}" class="btn btn-default">Delete</a></td>
      	</tr>
      	</table>
      	</center>
 
    </div>
      <script>
      var App = angular.module('countryApp', []);
      App.controller('prdCtrl', function ($scope){       
          $scope.products = ${prdm};
        });
    
    </script>
    
                    
	
	</div>
                    
                   
         </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

                       
      
    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>
    <script src="./js/jquery-1.10.0.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>


</body>
</html>