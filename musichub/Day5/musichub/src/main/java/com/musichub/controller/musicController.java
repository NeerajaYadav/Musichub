package com.musichub.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.musichub.dao.prodImp;

@Controller
public class musicController {


		 @RequestMapping(value="/", method=RequestMethod.GET)
		 public ModelAndView show() {
			 ModelAndView m1 = new ModelAndView("index");	
			 
			 System.out.println("Welcome to the index");
			 return m1;
			 } 
			 

		 @RequestMapping(value="/aboutus", method=RequestMethod.GET)
		 public ModelAndView about() {
			 ModelAndView m1 = new ModelAndView("aboutus");	
			 
			 System.out.println("Welcome to the aboutus");
			 return m1;
			 } 
			 
		 

		 @RequestMapping(value="/allProducts", method=RequestMethod.GET)
		 public ModelAndView show1() {
			 ModelAndView m1 = new ModelAndView("allProducts");	
			 
			 System.out.println("Welcome to the allproducts");
			 return m1;
			 } 
			 
		 
		 

		 @RequestMapping(value="/home", method=RequestMethod.GET)
		 public ModelAndView show2() {
			 ModelAndView m1 = new ModelAndView("home");	
			 
			 System.out.println("Welcome to the home");
			 return m1;
			 } 
			 

		 @RequestMapping(value="/login", method=RequestMethod.GET)
		 public ModelAndView show3() {
			 ModelAndView m1 = new ModelAndView("login");	
			 
			 System.out.println("Welcome to the login");
			 return m1;
			 } 
			 

		 @RequestMapping(value="/reg", method=RequestMethod.GET)
		 public ModelAndView show5() {
			 ModelAndView m1 = new ModelAndView("reg");	
			 
			 System.out.println("Welcome to the Register");
			 return m1;
			 } 
			 
			 
		 
		 @RequestMapping(value="/productInfo", method=RequestMethod.GET) 
		public ModelAndView productGson()
		{
			 prodImp pi=new prodImp();
		 Gson gson = new GsonBuilder().create();
	    String s1= gson.toJson(pi.viewProduct());
	    System.out.println(s1.toString());
	    ModelAndView m2= new ModelAndView("productInfo");
	    m2.addObject("data",s1);
	    
	     return m2;
	     
		}
		 
		 
	}

	
	
	

