package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.EngineProcessactivityinvokingapplication;

/**
 * Home object for domain model class EngineProcessactivityinvokingapplication.
 * @see cn.edu.sjtu.iasdsp.dao.EngineProcessactivityinvokingapplication
 * @author Hibernate Tools
 */
public class EngineProcessactivityinvokingapplicationHome {

	private static final Log log = LogFactory.getLog(EngineProcessactivityinvokingapplicationHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(EngineProcessactivityinvokingapplication transientInstance) {
		log.debug("persisting EngineProcessactivityinvokingapplication instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(EngineProcessactivityinvokingapplication instance) {
		log.debug("attaching dirty EngineProcessactivityinvokingapplication instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(EngineProcessactivityinvokingapplication instance) {
		log.debug("attaching clean EngineProcessactivityinvokingapplication instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(EngineProcessactivityinvokingapplication persistentInstance) {
		log.debug("deleting EngineProcessactivityinvokingapplication instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public EngineProcessactivityinvokingapplication merge(EngineProcessactivityinvokingapplication detachedInstance) {
		log.debug("merging EngineProcessactivityinvokingapplication instance");
		try {
			EngineProcessactivityinvokingapplication result = (EngineProcessactivityinvokingapplication) sessionFactory
					.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineProcessactivityinvokingapplication findById(java.lang.Integer id) {
		log.debug("getting EngineProcessactivityinvokingapplication instance with id: " + id);
		try {
			EngineProcessactivityinvokingapplication instance = (EngineProcessactivityinvokingapplication) sessionFactory
					.getCurrentSession().get("cn.edu.sjtu.iasdsp.dao.EngineProcessactivityinvokingapplication", id);
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

	public List<EngineProcessactivityinvokingapplication> findByExample(EngineProcessactivityinvokingapplication instance) {
		log.debug("finding EngineProcessactivityinvokingapplication instance by example");
		try {
			List<EngineProcessactivityinvokingapplication> results = (List<EngineProcessactivityinvokingapplication>) sessionFactory
					.getCurrentSession().createCriteria("cn.edu.sjtu.iasdsp.dao.EngineProcessactivityinvokingapplication")
					.add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
