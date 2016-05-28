package com.watches.dao;

import java.util.List;

import com.watches.model.Customer;

public interface CustomerDao {
	public Customer findById(Integer id);
	public List<Customer> getItems();
	public List<Customer> getAn();
	public List<Customer> getDt();
	public List<Customer> getSm();

	public void save(Customer c);
	public void update(Customer c);
	public void delete(int id);
	//public List<Customer> viewAllCustomers();
}
