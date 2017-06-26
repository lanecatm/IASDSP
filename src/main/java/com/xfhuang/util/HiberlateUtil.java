package com.xfhuang.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class HiberlateUtil {

	private final static SessionFactory SESSION_FACTORY = buildSessionFactory();
	private static SessionFactory buildSessionFactory(){
		StandardServiceRegistry standardServiceRegistry = new StandardServiceRegistryBuilder().configure().build();
        SessionFactory sessionFactory = null;
		sessionFactory = new MetadataSources(standardServiceRegistry).buildMetadata().buildSessionFactory();
		return sessionFactory;
	}
	public static SessionFactory getSessionFactory() {
		return SESSION_FACTORY;
	}
	
	public static Session openSession(){
		return SESSION_FACTORY.openSession();
	}
	
	public static void closeSession(Session session){
		if (session != null){
			session.close();
		}
	}
	
}
