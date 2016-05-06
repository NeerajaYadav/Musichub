var app= angular.module('myApp', []);
var productsList =$data;
	    
app.controller('nameCntrl', function()
		{
	this.names= productsList;
		});
