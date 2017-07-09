package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.EngineJavaclassmethod;

/**
 * Home object for domain model class EngineJavaclassmethod.
 * @see cn.edu.sjtu.iasdsp.dao.EngineJavaclassmethod
 * @author Hibernate Tools
 */
public class EngineJavaclassmethodHome {

	private static final Log log = LogFactory.getLog(EngineJavaclassmethodHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(EngineJavaclassmethod transientInstance) {
		log.debug("persisting EngineJavaclassmethod instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(EngineJavaclassmethod instance) {
		log.debug("attaching dirty EngineJavaclassmethod instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(EngineJavaclassmethod instance) {
		log.debug("attaching clean EngineJavaclassmethod instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(EngineJavaclassmethod persistentInstance) {
		log.debug("deleting EngineJavaclassmethod instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public EngineJavaclassmethod merge(EngineJavaclassmethod detachedInstance) {
		log.debug("merging EngineJavaclassmethod instance");
		try {
			EngineJavaclassmethod result = (EngineJavaclassmethod) sessionFactory.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineJavaclassmethod findById(java.lang.Integer id) {
		log.debug("getting EngineJavaclassmethod instance with id: " + id);
		try {
			EngineJavaclassmethod instance = (EngineJavaclassmethod) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.EngineJavaclassmethod", id);
			if (instance == null) {
				log.debug("get successful, no instance found");
			} else {
				log.debug("get successful, instance found");
			}
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<EngineJavaclassmethod> findByExample(EngineJavaclassmethod instance) {
		log.debug("finding EngineJavaclassmethod instance by example");
		try {
			List<EngineJavaclassmethod> results = (List<EngineJavaclassmethod>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.dao.EngineJavaclassmethod").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
