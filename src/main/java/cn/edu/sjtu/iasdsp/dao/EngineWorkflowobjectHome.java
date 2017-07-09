package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.EngineWorkflowobject;

/**
 * Home object for domain model class EngineWorkflowobject.
 * @see cn.edu.sjtu.iasdsp.dao.EngineWorkflowobject
 * @author Hibernate Tools
 */
public class EngineWorkflowobjectHome {

	private static final Log log = LogFactory.getLog(EngineWorkflowobjectHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(EngineWorkflowobject transientInstance) {
		log.debug("persisting EngineWorkflowobject instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(EngineWorkflowobject instance) {
		log.debug("attaching dirty EngineWorkflowobject instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(EngineWorkflowobject instance) {
		log.debug("attaching clean EngineWorkflowobject instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(EngineWorkflowobject persistentInstance) {
		log.debug("deleting EngineWorkflowobject instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public EngineWorkflowobject merge(EngineWorkflowobject detachedInstance) {
		log.debug("merging EngineWorkflowobject instance");
		try {
			EngineWorkflowobject result = (EngineWorkflowobject) sessionFactory.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineWorkflowobject findById(java.lang.Integer id) {
		log.debug("getting EngineWorkflowobject instance with id: " + id);
		try {
			EngineWorkflowobject instance = (EngineWorkflowobject) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.EngineWorkflowobject", id);
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

	public List<EngineWorkflowobject> findByExample(EngineWorkflowobject instance) {
		log.debug("finding EngineWorkflowobject instance by example");
		try {
			List<EngineWorkflowobject> results = (List<EngineWorkflowobject>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.dao.EngineWorkflowobject").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
