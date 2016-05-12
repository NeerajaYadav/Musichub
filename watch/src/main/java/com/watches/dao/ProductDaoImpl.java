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
import com.watches.model.Product;

@Repository("productDao")
public class ProductDaoImpl implements ProductDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public void addCategory(Product p) {
		
		Session s=sessionFactory.getCurrentSession();
		Transaction t = s.beginTransaction();
		s.saveOrUpdate(p);
		t.commit();
	}

	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public List<Product> getCategories() {
		return (List<Product>) sessionFactory.getCurrentSession().createCriteria(Product.class).list();
	}

	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public Product getCategory(int categoryId) {
		return (Product) sessionFactory.getCurrentSession().get(Product.class, categoryId);
	}

	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public void deleteCategory(int categoryId) {
	
		Product p = sessionFactory.getCurrentSession().get(Product.class, categoryId);
		
		 Session session=sessionFactory.getCurrentSession();
		   Transaction trans=(Transaction) session.beginTransaction();
		   session.delete(p);
		
		trans.commit();

	}
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public void update(Product p) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(p);
		
	}

}
