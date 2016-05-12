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
	@Autowired
	private CustomerServiceDao cd;
	@Autowired
	private ProductServiceDao pd;
	

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
		 
	 @RequestMapping(value="/adminLink", method=RequestMethod.GET)
	 public ModelAndView show6() {
		 ModelAndView m1 = new ModelAndView("adminLink");	
		 
		 System.out.println("Welcome to the Admin Link Page");
		 return m1;
		 } 	 
	 
	 
	 
	 @RequestMapping(value="/productInfo", method=RequestMethod.GET) 
	public ModelAndView productGson()
	{
	//prodImpl pi =new prodImpl();
		/*prodImpl p1 = new prodImpl();
	Gson gson = new GsonBuilder().create();
   String s1= gson.toJson(p1.addProduct());
   System.out.println(s1.toString());
   ModelAndView m2= new ModelAndView("productInfo");
   m2.addObject("data",s1);
   */
    return null;
    
	}
	
	 
	 
	 
	 /*
	 @RequestMapping(value="/signUp", method=RequestMethod.GET)
	 public ModelAndView show7() {
		 ModelAndView m1 = new ModelAndView("signUp");	
		 
		 System.out.println("Welcome to the Sign Up Page");
		 m1.addObject("command", new Customer());
		 
		 return m1;
		 } 	 
 
	 
 @RequestMapping(value="/addProduct", method=RequestMethod.POST)
	 public ModelAndView show8(@ModelAttribute("watches")Customer c, ModelMap model) {
		 ModelAndView m1 = new ModelAndView("signUp");
		   
		// m1.setViewName("result");
		 cd.add(c);
		 System.out.println("In Add Product page");
		 
		 //s2.addsignupProduct(s1);
		 return m1;
		 }

 
 
 
@RequestMapping(value="/edit", method=RequestMethod.POST)
 public ModelAndView show9(@ModelAttribute("watches")Customer c, ModelMap model) {
	 ModelAndView m1 = new ModelAndView("signUp");
	   
	m1.setViewName("result");
	 cd.edit(c);;
	 System.out.println("In update page");
	 
	 //s2.addsignupProduct(s1);
	 return m1;
	 }
 





@RequestMapping(value="/delete", method=RequestMethod.POST)
 public ModelAndView show11(@ModelAttribute("watches")Customer c, ModelMap model) {
	 ModelAndView m1 = new ModelAndView("signUp");
	   
	 m1.setViewName("result");
	 cd.delete(c.getId());
	 System.out.println("In Delete page");
	 
	 //s2.addsignupProduct(s1);
	 return m1;
	 }
 




 
*/

/*
 public String saveOrUpdateUser(@ModelAttribute("userForm") @Validated User user,
			BindingResult result, Model model, 
			final RedirectAttributes redirectAttributes) {

		logger.debug("saveOrUpdateUser() : {}", user);

		if (result.hasErrors()) {
			populateDefaultModel(model);
			return "users/userform";
		} else {

			// Add message to flash scope
			redirectAttributes.addFlashAttribute("css", "success");
			if(user.isNew()){
			  redirectAttributes.addFlashAttribute("msg", "User added successfully!");
			}else{
			  redirectAttributes.addFlashAttribute("msg", "User updated successfully!");
			}
			
			userService.saveOrUpdate(user);
			
			// POST/REDIRECT/GET
			return "redirect:/users/" + user.getId();

			// POST/FORWARD/GET
			// return "user/list";

		}

	}


 */

	 
	 
	 
	 @RequestMapping(value="/signUp", method=RequestMethod.GET)
	 public ModelAndView show11() {
		 ModelAndView m1 = new ModelAndView("signUp");	
		 
		 System.out.println("Welcome to the Sign Up Page");
		 m1.addObject("command", new Customer());
		 
		 return m1;
		 } 	 
 
	 
 @RequestMapping(value="/addCustomer", method=RequestMethod.POST)
	
 public ModelAndView addCustomer(@Valid Customer customer, BindingResult result) {
try{
	 	cd.saveOrUpdate(customer);
}
catch(Exception e)
{
	
}ModelAndView m = new ModelAndView("signUp");
		if (result.hasErrors()) {
			
			
			m.addObject("command", new Customer());
			return m;
		} else {
			return m;
		}

	}
 
 /*public ModelAndView show12(@Valid @ModelAttribute("watch")Customer c,  BindingResult result, ModelMap model) {
		 ModelAndView m1 = new ModelAndView("upload");
		   
		// m1.setViewName("result");
		 cd.saveOrUpdate(c);
		 System.out.println("In Add Product page");
		 
		 //s2.addsignupProduct(s1);
		 return m1;
		 }

	 */
	 
	 
	 
	 
	 
	 
	 @RequestMapping(value="/addProducts", method=RequestMethod.GET)
	 public ModelAndView show7() {
		 ModelAndView m1 = new ModelAndView("addProducts");	
		 
		 System.out.println("Welcome to the Sign Up Page");
		 m1.addObject("command", new Product());
		 
		 return m1;
		 } 	 
 
	 
	 @RequestMapping(value="/addProduct",method=RequestMethod.POST)
	 public String addProduct(@Valid Product product, BindingResult result) {

			if (result.hasErrors()) {
				return "addProducts";
			} else {
				return "result";
			}

		}
	 
	 
	 
	 /* public ModelAndView show8(@ModelAttribute("watch")Product p){
		 System.out.println("Add Product");
		 pd.addCategory(p);
		 return new ModelAndView("result");
	 }
*/

	 
	 
	 
 
 

 @RequestMapping(value="/result", method=RequestMethod.GET)
	 public ModelAndView show10() {
		 ModelAndView m1 = new ModelAndView("result");
		   
		 m1.setViewName("result");
		 m1.addObject("ls", pd.getCategories());
		
		
		 System.out.println("Welcome To View page");
		 
		 //s2.addsignupProduct(s1);
		 return m1;
		 }	 
 
 	@RequestMapping(value="/productupdate",method=RequestMethod.GET)
 	public ModelAndView pdup(){
 		System.out.println("Update Method");
 		ModelAndView m = new ModelAndView();
 		m.setViewName("productupdate");
 		m.addObject("command", new Product());
 		return m;
 	}
 
 

	@RequestMapping(value = "/saveCategory", method = RequestMethod.POST)
	public ModelAndView saveEmployee(@ModelAttribute("command") Product category) {
		System.out.println("Update Method 1");
		pd.update(category);
		return new ModelAndView("redirect:/result");
	}
 
	
	
	

	@RequestMapping(value = "/deleteProducts/{id}", method = RequestMethod.GET)
	public ModelAndView deleteProduct(@PathVariable("id")int id ) {
		System.out.println("Update Method 1");
		pd.deleteCategory(id);
		return new ModelAndView("redirect:/result");
	}
 
	
	
	
	
	
	@RequestMapping(value="/adminLogin", method = RequestMethod.GET)
	public ModelAndView login()
	{
		System.out.println("welcome to admin login page");
		ModelAndView m = new ModelAndView();
		m.setViewName("adminLogin");
		return m;
	 
	}
	
	

	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(ModelMap model) {
	model.addAttribute("logout", "true");
	return "adminLogin";
	 
	}
	
	@RequestMapping(value="/accessdenied", method = RequestMethod.GET)
	public String loginError(ModelMap model) {
		System.out.println("welcome to error page");
	model.addAttribute("accessdenied", "true");
	return "adminLogin";
	 
	}
	
	
	
	
/*	
	@RequestMapping(value = "/addCategory", method = RequestMethod.GET)
	public ModelAndView addCategory(@ModelAttribute("command")  Product category,
			BindingResult result) {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("categories",  pd.getCategories());
		return new ModelAndView("addCategory", model);
	}
 
 */
	
	
	
	
	
	
	
	
	
	
	
	
 
}








