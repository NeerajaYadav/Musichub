
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<head>

 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="<spring:url value="/resources/css/bootstrap.min.css"/>">
  <script src="<spring:url value="/resources/js/jquery.min.js"/>"></script>
  <script src="<spring:url value="/resources/js/bootstrap.min.js"/>"></script>

 



<p>

<h1 style="color:#4CAF50;">Welcome To The Watch World!!!!!!!</h1>

</p>


  

  
  <style>
.mySlides {display:none;}
</style>
<body>

<div class="w3-content w3-section" style="max-width:500px">
  <img class="mySlides" src="<spring:url value="resources/images/watch1.jpg"/>" align="left" style="width:100%" style="height:350%">
  <img class="mySlides" src="<spring:url value="resources/images/watch2.jpg"/>" align="left" style="width:100%" style="height:350%">
  <img class="mySlides" src="<spring:url value="resources/images/watch3.jpg"/>" align="left" style="width:100%" style="height:150%">
  <img class="mySlides" src="<spring:url value="resources/images/watch4.jpg"/>" align="left" style="width:100%" style="height:150%">
  <img class="mySlides" src="<spring:url value="resources/images/watch5.jpg"/>" align="left" style="width:100%" style="height:150%">
  <img class="mySlides" src="<spring:url value="resources/images/watch6.jpg"/>" align="left" style="width:100%" style="height:150%">
</div>  

<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>
  
  
  </head>
  
  
  <!--  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
        
</div>
    <div class="carousel-inner" role="listbox">
      
      <div class="item active">
         <img src="resources/images/watch1.jpg" alt="Flower" width="250" height="280">
      </div>

      <div class="item">
         <img src="resources/images/watch2.jpg" alt="Flower" width="250" height="280">
      </div>
    
      <div class="item">
        <img src="resources/images/watch3.jpg" alt="Flower" width="250" height="280"> 
      </div>

      <div class="item">
        <img src="resources/images/watch4.jpg" alt="Flower" width="250" height="280">
      </div>
    </div>

-->






<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 200px;
    background-color: #f1f1f1;
}

li a {
    display: block;
    color: #000;
    padding: 8px 0 8px 16px;
    text-decoration: none;
}

li a.active {
    background-color: #4CAF50;
    color: white;
}

li a:hover:not(.active) {
    background-color: #555;
    color: white;
}
</style>


<style>


wrapper {
    width: 100%;
    background-color: lightcyan;
}


</style>





<div id="mySidenav" class="sidenav">

  <li><a class="active" href="home">Home</a></li>
    <li><a href="categories">All Categories</a></li>
   <li><a href="aboutus">About Us</a></li>
     <li><a href="logout">Logout</a></li>
  

               
   
  <br>
  </div>



</body>
</html>
