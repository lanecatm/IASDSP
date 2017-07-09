package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.EngineProcessactivityinputmapping;

/**
 * Home object for domain model class EngineProcessactivityinputmapping.
 * @see cn.edu.sjtu.iasdsp.dao.EngineProcessactivityinputmapping
 * @author Hibernate Tools
 */
public class EngineProcessactivityinputmappingHome {

	private static final Log log = LogFactory.getLog(EngineProcessactivityinputmappingHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(EngineProcessactivityinputmapping transientInstance) {
		log.debug("persisting EngineProcessactivityinputmapping instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(EngineProcessactivityinputmapping instance) {
		log.debug("attaching dirty EngineProcessactivityinputmapping instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(EngineProcessactivityinputmapping instance) {
		log.debug("attaching clean EngineProcessactivityinputmapping instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(EngineProcessactivityinputmapping persistentInstance) {
		log.debug("deleting EngineProcessactivityinputmapping instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public EngineProcessactivityinputmapping merge(EngineProcessactivityinputmapping detachedInstance) {
		log.debug("merging EngineProcessactivityinputmapping instance");
		try {
			EngineProcessactivityinputmapping result = (EngineProcessactivityinputmapping) sessionFactory.getCurrentSession()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineProcessactivityinputmapping findById(java.lang.Integer id) {
		log.debug("getting EngineProcessactivityinputmapping instance with id: " + id);
		try {
			EngineProcessactivityinputmapping instance = (EngineProcessactivityinputmapping) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.EngineProcessactivityinputmapping", id);
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

	public List<EngineProcessactivityinputmapping> findByExample(EngineProcessactivityinputmapping instance) {
		log.debug("finding EngineProcessactivityinputmapping instance by example");
		try {
			List<EngineProcessactivityinputmapping> results = (List<EngineProcessactivityinputmapping>) sessionFactory
					.getCurrentSession().createCriteria("cn.edu.sjtu.iasdsp.dao.EngineProcessactivityinputmapping")
					.add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
