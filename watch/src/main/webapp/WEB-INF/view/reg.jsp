<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
  <script src="/resources/js/jquery.min.js"></script>
  <script src="/resources/js/bootstrap.min.js"></script>
<p> <h2 style="color:#3CGH42;"> Welcome to the shopping world of your Time!!!!!</h2> </p>
<div>
  <ul>
  <li><a class="active" href="home">Home</a></li>
    <li><a href="aboutus">Aboutus</a></li>
   <li><a href="login">Login</a></li>
   <li><a href="allProducts">Shopping</a></li>
   <li><a href="reg">RegisterHere</a></li>
   </ul>
     <br>
     </div>
     
</head>
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


<body>

<div class="container"><div class="row">
<div class="col-md-4 col-md-offset-7">
<div class="panel panel-default">
<div class="panel-heading">

</div>

</div>

  </div>
  </div>
  </div>
  
 </head>
<body>

<div class="container"><div class="row">
<div class="col-md-4 col-md-offset-7">
<div class="panel panel-default">
<div class="panel-heading">

<div class="page-header">
    <h1>Registration form </h1>
</div>
</div>





<div class="panel-body">
<form class="form-horizontal" role="form" id="780274440">

<div class="form-group">
<label for="inputFirstName" class="col-sm-3 control-label">First Name</label>
<div class="col-sm-9">
<input type="text" class="form-control" id="inputFname" placeholder="First Name" required="">
</div></div>




<div class="form-group">
<label for="inputLastName" class="col-sm-3 control-label">Last Name</label>
<div class="col-sm-9">
<input type="text" class="form-control" id="inputLname" placeholder="Last Name" required="">
</div></div>



<div class="form-group">
<label for="inputEmail3" class="col-sm-3 control-label">Email</label>
<div class="col-sm-9">
<input type="email" class="form-control" id="inputEmail3" placeholder="Email" required="">
</div></div>



<div class="form-group">
<label for="inputEmail" class="col-sm-3 control-label">Confirm Email</label>
<div class="col-sm-9">
<input type="email" class="form-control" id="inputEmail" placeholder="Confirm Email" required="">
</div></div>

<div class="form-group">
<label for="inputPassword3" class="col-sm-3 control-label">Password</label>
<div class="col-sm-9">
<input type="password" class="form-control" id="inputPassword3" placeholder="Password" required="">
</div></div>


<div class="form-group">
<label for="inputPassword1" class="col-sm-3 control-label">Confirm Password</label>
<div class="col-sm-9">
<input type="password" class="form-control" id="inputPassword1" placeholder="Confirm Password" required="">
</div></div>



<div class="form-group last">
<div class="col-sm-offset-3 col-sm-9">
<button type="submit" class="btn btn-success btn-sm">Sign in <a href=login" class=""></a></button> 
<button type="reset" class="btn btn-default btn-sm">Reset</button>
</div></div></form></div>
</div></div></div></div>
            <div class="panel-footer">Already Registered? <a href="login" class="">Login here</a>
</div>
            
        </form>
        <div class="col-lg-5 col-md-push-1">
            <div class="col-md-12">
                
                <div class="alert alert-danger">
                    <span class="glyphicon glyphicon-remove"></span><strong> Error! Please check all page inputs.</strong>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Registration form - END -->

</div>


</body>
</html>