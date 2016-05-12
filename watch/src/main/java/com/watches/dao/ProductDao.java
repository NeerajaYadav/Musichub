package com.watches.dao;

import java.util.List;
import com.watches.model.*;
public interface ProductDao {

	public void addCategory(Product p);
	
	public List<Product> getCategories();
	public void update(Product p);
	
	public Product getCategory(int categoryId);
	
	public void deleteCategory(int categoryId);

}
