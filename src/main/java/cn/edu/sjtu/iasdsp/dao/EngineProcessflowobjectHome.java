package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.EngineProcessflowobject;

/**
 * Home object for domain model class EngineProcessflowobject.
 * @see cn.edu.sjtu.iasdsp.dao.EngineProcessflowobject
 * @author Hibernate Tools
 */
public class EngineProcessflowobjectHome {

	private static final Log log = LogFactory.getLog(EngineProcessflowobjectHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(EngineProcessflowobject transientInstance) {
		log.debug("persisting EngineProcessflowobject instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(EngineProcessflowobject instance) {
		log.debug("attaching dirty EngineProcessflowobject instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(EngineProcessflowobject instance) {
		log.debug("attaching clean EngineProcessflowobject instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(EngineProcessflowobject persistentInstance) {
		log.debug("deleting EngineProcessflowobject instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public EngineProcessflowobject merge(EngineProcessflowobject detachedInstance) {
		log.debug("merging EngineProcessflowobject instance");
		try {
			EngineProcessflowobject result = (EngineProcessflowobject) sessionFactory.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineProcessflowobject findById(java.lang.Integer id) {
		log.debug("getting EngineProcessflowobject instance with id: " + id);
		try {
			EngineProcessflowobject instance = (EngineProcessflowobject) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.EngineProcessflowobject", id);
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

	public List<EngineProcessflowobject> findByExample(EngineProcessflowobject instance) {
		log.debug("finding EngineProcessflowobject instance by example");
		try {
			List<EngineProcessflowobject> results = (List<EngineProcessflowobject>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.dao.EngineProcessflowobject").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
