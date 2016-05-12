package com.watches.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.watches.dao.CustomerDao;
import com.watches.model.Customer;
@Service("customerService")
public class CustomerService implements CustomerServiceDao{

	
	
	@Autowired
	private CustomerDao cd;
	public Customer findById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public List<Customer> findAll() {
		List<Customer>all=cd.getItems();
		return all;
	}
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public List<Customer> findAn() {
		List<Customer>An=cd.getAn();
		return An;
	}
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public List<Customer> findDt() {
		List<Customer>Dt=cd.getDt();
		return Dt;
	}
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public List<Customer> findSm() {
		List<Customer>Sm=cd.getSm();
		return Sm;
	}
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public void saveOrUpdate(Customer c) {
		cd.save(c);
		
	}
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public void delete(int id) {
		cd.delete(id);
		
	}

}


	
	
	
	
	

