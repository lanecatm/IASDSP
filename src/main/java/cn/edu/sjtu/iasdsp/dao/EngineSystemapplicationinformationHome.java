package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.EngineSystemapplicationinformation;

/**
 * Home object for domain model class EngineSystemapplicationinformation.
 * @see cn.edu.sjtu.iasdsp.dao.EngineSystemapplicationinformation
 * @author Hibernate Tools
 */
public class EngineSystemapplicationinformationHome {

	private static final Log log = LogFactory.getLog(EngineSystemapplicationinformationHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(EngineSystemapplicationinformation transientInstance) {
		log.debug("persisting EngineSystemapplicationinformation instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(EngineSystemapplicationinformation instance) {
		log.debug("attaching dirty EngineSystemapplicationinformation instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(EngineSystemapplicationinformation instance) {
		log.debug("attaching clean EngineSystemapplicationinformation instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(EngineSystemapplicationinformation persistentInstance) {
		log.debug("deleting EngineSystemapplicationinformation instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public EngineSystemapplicationinformation merge(EngineSystemapplicationinformation detachedInstance) {
		log.debug("merging EngineSystemapplicationinformation instance");
		try {
			EngineSystemapplicationinformation result = (EngineSystemapplicationinformation) sessionFactory.getCurrentSession()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineSystemapplicationinformation findById(java.lang.Integer id) {
		log.debug("getting EngineSystemapplicationinformation instance with id: " + id);
		try {
			EngineSystemapplicationinformation instance = (EngineSystemapplicationinformation) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.EngineSystemapplicationinformation", id);
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

	public List<EngineSystemapplicationinformation> findByExample(EngineSystemapplicationinformation instance) {
		log.debug("finding EngineSystemapplicationinformation instance by example");
		try {
			List<EngineSystemapplicationinformation> results = (List<EngineSystemapplicationinformation>) sessionFactory
					.getCurrentSession().createCriteria("cn.edu.sjtu.iasdsp.dao.EngineSystemapplicationinformation")
					.add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
