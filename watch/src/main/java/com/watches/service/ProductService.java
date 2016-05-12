package com.watches.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.watches.dao.ProductDao;
import com.watches.model.Customer;
import com.watches.model.Product;

@Service("productService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class ProductService implements ProductServiceDao {

	
	@Autowired
	ProductDao pdao;


	
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public void addCategory(Product categoryBean) {
		pdao.addCategory(categoryBean);
	}

	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)	
	public List<Product> getCategories() {
		return pdao.getCategories();
	}

	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public Product getCategory(int categoryId) {
		return pdao.getCategory(categoryId);
	}

	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public void deleteCategory(int categoryId) {
		pdao.deleteCategory(categoryId);
	}

	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public void update(Product p) {
		// TODO Auto-generated method stub
		
		pdao.update(p);
		
	}

}	