package com.fantezy.FantezyBackendProject.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fantezy.FantezyBackendProject.model.OrderDetails;
@Repository("orderDetailsDAO")
public class OrderDetailsDAO
{
@Autowired
SessionFactory sessionFactory;
public OrderDetailsDAO(SessionFactory sessionFactory)
{
	this.sessionFactory=sessionFactory;
}
@Transactional
public void insertOrder(OrderDetails order)
{
	sessionFactory.getCurrentSession().saveOrUpdate(order);
	
}
public List<OrderDetails> retrieveOrders(String username)
{
	Query q=sessionFactory.getCurrentSession().createQuery("from OrderDetails where username");
			q.setParameter("uname", username);
	List<OrderDetails> list=q.list();
	return list;
}
	public OrderDetails getOrderDetails()
	{
		Session session=sessionFactory.openSession();
		Query q=session.createQuery("from OrderDetails order by orderid");
		List<OrderDetails> list=q.list();
		if(list.size()>0)
		{
			return list.get(0);
		}
		else {
			return list.get(1);
		}
		}
			
}


