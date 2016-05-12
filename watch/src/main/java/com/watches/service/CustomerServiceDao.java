package com.watches.service;

import java.util.List;

import com.watches.model.Customer;

public interface CustomerServiceDao {

Customer findById(Integer id);
	
	List<Customer> findAll();

	void saveOrUpdate(Customer c);
	
	void delete(int id);

	
	
}
