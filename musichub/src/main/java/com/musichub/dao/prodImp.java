package com.musichub.dao;

import com.musichub.model.product;

public class prodImp implements productDao{


	product pro;
	@Override
	public void addProduct() {
	
	pro.setPid(101);
	pro.setPname("Piano");
	pro.setPrice("80000");
		
	}

	@Override
	public product viewProduct() {
		// TODO Auto-generated method stub
		pro=new product();
		addProduct();
		
		 return pro;
	}

	
	
	
}
