package com.watches.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.watches.model.Customer;




@Repository("custDao")
public class CustomerDaoImpl implements CustomerDao {

	@Autowired
	private SessionFactory sf;

	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public List<Customer> getItems() {		
		 Session session=sf.getCurrentSession();
		   Transaction trans=(Transaction) session.beginTransaction();
		List<Customer>all=session.createQuery("from Product").list();
		((org.hibernate.Transaction) trans).begin();
		
		return all;
	}

	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public List<Customer> getAn() {
		 Session session=sf.getCurrentSession();
		 Transaction trans=(Transaction) session.beginTransaction();
		List<Customer>An=session.createQuery("from Product where type='Analogue'").list();
		((org.hibernate.Transaction) trans).begin();
		
		return An;
	}

	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public List<Customer> getDt() {
		 Session session=sf.getCurrentSession();
		 Transaction trans=(Transaction) session.beginTransaction();
		List<Customer>Dt=session.createQuery("from Product where type='Digital'").list();
		((org.hibernate.Transaction) trans).begin();
		
		return Dt;
	}

	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public List<Customer> getSm() {
		 Session session=sf.getCurrentSession();
		 Transaction trans=(Transaction) session.beginTransaction();
		List<Customer>Sm=session.createQuery("from Product where type='Smart'").list();
		((org.hibernate.Transaction) trans).begin();
		
		return Sm;
	}
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public Customer findById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public void save(Customer c) {
		
		   Session session=sf.getCurrentSession();
		   Transaction trans=(Transaction) session.beginTransaction();
		   c.setEnabled(true);
		   session.saveOrUpdate(c);
		   	trans.commit();
				
	}

	public void update(Customer c) {

		
	}

	public void delete(int id) {
		 Session session=sf.getCurrentSession();
		   Transaction trans=(Transaction) session.beginTransaction();
		  
		   
		   
		   Customer c = (Customer)session.load(Customer.class, new Integer(id));
	        if(null != c){
	            session.delete(c);
	        }
	   
				trans.commit();
			
	}
	

}
