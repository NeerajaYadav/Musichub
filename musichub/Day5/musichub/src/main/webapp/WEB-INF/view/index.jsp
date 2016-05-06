<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="<spring:url value="/resources/css/bootstrap.min.css"/>">
  <script src="<spring:url value="/resources/js/jquery.min.js"/>"></script>
  <script src="<spring:url value="/resources/js/bootstrap.min.js"/>"></script>

 
 
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

<ul>
  <li><a href="home">Home</a></li>
  <li><a href="login">Login</a></li>
  <li><a href="reg">New user Register Here</a></li>
  <li><a href="allProducts">All Products</a></li>
  <li style="float:right"><a class="active" href="aboutus">About</a></li>
</ul>


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

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      
      <div class="item active">
        <img src="<spring:url value="resources/images/music4.jpg"/>" alt="Flower" width="460" height="345">
      </div>

      <div class="item">
        <img src="<spring:url value="resources/images/music1.jpg"/>" alt="Flower" width="460" height="345">
      </div>
    
      <div class="item">
        <img src="<spring:url value="resources/images/music2.jpg"/>" alt="Flower" width="460" height="345">
      </div>

      <div class="item">
        <img src="<spring:url value="resources/images/music3.jpg"/>" alt="Flower" width="460" height="345">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<div>


        <a href="/productInfo"> <img src="<spring:url value="resources/images/guitar.jpg"/>"  alt="Flower" width="220" height="220"/></a>
   
       <a href="productInfo"><img src="<spring:url value="resources/images/sanxophone.jpg"/>" alt="Flower" width="220" height="120"/></a>
       
        <a href="productInfo"> <img src="<spring:url value="resources/images/veena.jpg"/>" alt="Flower" width="220" height="220"/></a>
      

        <a href="productInfo" > <img src="<spring:url  value="resources/images/piano.jpg"/>" alt="Flower" width="220" height="220"/></a>
   


</div>




<body>

</body>
</html>