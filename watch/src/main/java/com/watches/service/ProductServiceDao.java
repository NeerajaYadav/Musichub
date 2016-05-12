package com.watches.service;

import java.util.List;

import com.watches.model.Customer;
import com.watches.model.Product;

public interface ProductServiceDao {

	
public void addCategory(Product categoryBean);
public void update(Product p);
	
	public List<Product> getCategories();
	
	public Product getCategory(int categoryId);
	
	public void deleteCategory(int categoryId);
}
