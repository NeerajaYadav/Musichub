package com.watches.controller;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.watches.model.Customer;
import com.watches.model.Product;
import com.watches.service.CustomerServiceDao;
import com.watches.service.ProductServiceDao;

@Controller
public class watchController {

	ModelAndView m = new ModelAndView();
	
	
	@Autowired
	private CustomerServiceDao cd;
	@Autowired
	private ProductServiceDao pd;

	@RequestMapping(value="/",method=RequestMethod.GET)
	public ModelAndView goindex(){
		System.out.println("-----Index Controller-----");
		ModelAndView m = new ModelAndView("index");
		//m.setViewName("Home");
		return m;
	}

	

	@RequestMapping(value="/home",method=RequestMethod.GET)
	public ModelAndView gohome(){
		System.out.println("-----Home Controller-----");
		ModelAndView m = new ModelAndView("home");
		//m.setViewName("Home");
		return m;
	}

	@RequestMapping(value="/adminLogin", method = RequestMethod.GET)
	public ModelAndView login()
	{
		System.out.println("welcome to admin login page");
		ModelAndView m = new ModelAndView();
		m.setViewName("adminLogin");
		return m;
	 
	}
	
	
	 @ModelAttribute("cust")
	 public Customer getCustomer()
	 {
		 return new Customer();
	 }


	 @RequestMapping(value="/signUp", method=RequestMethod.GET)
	 public ModelAndView signup(){
			System.out.println("-----Signup Controller-----");
			m.setViewName("signUp");
			//m.addObject("command", new Customer());
			return m;
		}

 @RequestMapping(value="/addCustomer", method=RequestMethod.POST)

 public String addCustomer(@ModelAttribute("cust")@Valid Customer customer, BindingResult result) {
	 try{
		 cd.saveOrUpdate(customer);
	 	}
	 catch(Exception e)
	 {
		 
	 }
	 //ModelAndView m = new ModelAndView("result");
	 if (result.hasErrors()) 
	 {
		// m.addObject("command", new Customer());
		return "signUp";
	}
	 
	 else 
	 
		return "cindex";
}
 
 @RequestMapping("/cindex")
	public ModelAndView custindex(){
		m.setViewName("cindex");
		return m;
	}
	
	@RequestMapping("/aindex")
	public ModelAndView aindex(){
		m.setViewName("aindex");
		return m;
	
	}
	
	@RequestMapping(value="/categories",method=RequestMethod.GET)
	public ModelAndView showCategories(){
		System.out.println("-----Categories Controller-----");
		m.addObject("ls", pd.getCategories());
		m.setViewName("categories");
		return m;
	}
	
	
	@RequestMapping(value="/showAddCust",method=RequestMethod.GET)
	public ModelAndView showAddCust(){
		m.setViewName("signUp");
		m.addObject("command", new Customer());
		return m;
	}	
	 
	 @RequestMapping(value="/viewCustomers",method=RequestMethod.GET)
		public ModelAndView viewuser(){
		 ModelAndView m = new ModelAndView();
			m.setViewName("ViewCustomers");
			try{
			m.addObject("ls", cd.findAll());
			}
			catch(Exception e){
				System.out.println("Unable to view Customers.\t"+e);
				m.setViewName("aindex");
			}
			return m;
		}

	 
	 	  
	 @RequestMapping(value="/showAddProd",method=RequestMethod.GET)
		public ModelAndView showAddProd(){
			m.setViewName("addProducts");
			m.addObject("command", new Product());
			return m;
		}
	 
	
	 
	 @ModelAttribute("prod")
	 public Product getProduct()
	 {
		 return new Product();
	 }
		
		@RequestMapping(value="/addProduct",method=RequestMethod.GET)
		public ModelAndView addProd(@ModelAttribute("prod")@Valid Product prod,BindingResult result){
			m.setViewName("upload");
			try{
				pd.addCategory(prod);
			}
			catch(Exception e){}
			if(result.hasErrors())
				m.setViewName("addProducts");
			return m;
		} 

		@RequestMapping(value="/viewProducts",method=RequestMethod.GET)
		public ModelAndView showProd(){
			m.setViewName("ViewProducts");
			m.addObject("ls", pd.getCategories());
			return m;
		}	 
	 int a;
		@RequestMapping(value="/updPd/{id}",method=RequestMethod.GET)
		public ModelAndView updProd(@PathVariable("id")int id){
			m.setViewName("productupdate");
			//m.addObject("command", pobj.viewProductById(id));
			m.addObject("command", pd.getCategory(id));
			System.out.println( pd.getCategory(id));a=id;
			return m;
		}
	 
		 
		@RequestMapping(value="/upd",method=RequestMethod.POST)
		public ModelAndView uPrd(@ModelAttribute("watch")Product p){
			p.setPid(a);
			pd.update(p);
			m.setViewName("redirect:/viewProducts");
			return m;
		}

		 
		@RequestMapping(value="/delPd/{id}",method=RequestMethod.GET)
		public ModelAndView delProd(@PathVariable("id")int id){
			pd.deleteCategory(id);
			m.setViewName("redirect:/viewProducts");
			return m;
		}
		 //public String doaddcart(@RequestParam(value="id", required=true) int id){
		//@RequestParam("id")int id
			
	 
		@RequestMapping(value="/addcart/{id}")
		public String doaddcart(@RequestParam("id")int id){
			System.out.println("p = "+pd.getCategory(id));
			return "confirm";
		}
		
		@RequestMapping("/confirm")
		public String doconfirm(){
			m.setViewName("proddelivery");
			System.out.println("confirmed");
			return "proddelivery";
		}
		
		
		@RequestMapping(value="/aboutus",method=RequestMethod.GET)
		public ModelAndView about(){
			System.out.println("-----AboutUs Controller-----");
			m.setViewName("aboutus");
			return m;
		}
		
		@RequestMapping(value="/logout",method=RequestMethod.GET)
		public ModelAndView lgot(){
			System.out.println("-----Log Controller-----");
			m.setViewName("logout");
			return m;
		}
		
		@RequestMapping(value="/accessdenied",method=RequestMethod.GET)
		public ModelAndView gohome1(){
			System.out.println("-----Access Controller-----");
			m.setViewName("accessdenied");
			return m;
		}		
}








