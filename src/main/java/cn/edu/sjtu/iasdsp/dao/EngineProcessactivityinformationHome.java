package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.EngineProcessactivityinformation;

/**
 * Home object for domain model class EngineProcessactivityinformation.
 * @see cn.edu.sjtu.iasdsp.dao.EngineProcessactivityinformation
 * @author Hibernate Tools
 */
public class EngineProcessactivityinformationHome {

	private static final Log log = LogFactory.getLog(EngineProcessactivityinformationHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(EngineProcessactivityinformation transientInstance) {
		log.debug("persisting EngineProcessactivityinformation instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(EngineProcessactivityinformation instance) {
		log.debug("attaching dirty EngineProcessactivityinformation instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(EngineProcessactivityinformation instance) {
		log.debug("attaching clean EngineProcessactivityinformation instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(EngineProcessactivityinformation persistentInstance) {
		log.debug("deleting EngineProcessactivityinformation instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public EngineProcessactivityinformation merge(EngineProcessactivityinformation detachedInstance) {
		log.debug("merging EngineProcessactivityinformation instance");
		try {
			EngineProcessactivityinformation result = (EngineProcessactivityinformation) sessionFactory.getCurrentSession()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineProcessactivityinformation findById(java.lang.Integer id) {
		log.debug("getting EngineProcessactivityinformation instance with id: " + id);
		try {
			EngineProcessactivityinformation instance = (EngineProcessactivityinformation) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.EngineProcessactivityinformation", id);
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

	public List<EngineProcessactivityinformation> findByExample(EngineProcessactivityinformation instance) {
		log.debug("finding EngineProcessactivityinformation instance by example");
		try {
			List<EngineProcessactivityinformation> results = (List<EngineProcessactivityinformation>) sessionFactory
					.getCurrentSession().createCriteria("cn.edu.sjtu.iasdsp.dao.EngineProcessactivityinformation")
					.add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
