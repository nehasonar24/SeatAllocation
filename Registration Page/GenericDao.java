package com.cdac.entity;
import javax.persistence.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;



public class GenericDao {
public void add(Object obj) {
	EntityManagerFactory emf=null;
	EntityManager em=null;
	
	try {
	 emf = Persistence.createEntityManagerFactory("hibernate-mysql");
	 em = emf.createEntityManager();
	EntityTransaction tx =em.getTransaction();
	tx.begin();
	em.persist(obj);
	tx.commit();
	}
	finally {
		em.close();
		emf.close();
	}
}
public <E> E findByPKV2(Class<E> clazz, Object pk) {
	EntityManagerFactory emf = null;
	EntityManager em = null;
	try {
		emf = Persistence.createEntityManagerFactory("hibernate-mysql"); //<persistent-unit name="hibernate-mysql" ...>
		em = emf.createEntityManager();
		
		E e = em.find(clazz, pk);
		return e;
	}
	finally {			
		em.close();
		emf.close();
	}
}

/*
 * public void validation() { EntityManagerFactory emf=null; EntityManager
 * em=null; try { emf =
 * Persistence.createEntityManagerFactory("hibernate-mysql"); em =
 * emf.createEntityManager(); EntityTransaction tx =em.getTransaction();
 * tx.begin(); String select =
 * "SELECT ua FROM Employee ua WHERE ua.userName=:userName and ua.passWord=:password"
 * ; Query query = em.createQuery(select);
 * 
 * 
 * } finally { em.close(); emf.close(); } }
 */
}