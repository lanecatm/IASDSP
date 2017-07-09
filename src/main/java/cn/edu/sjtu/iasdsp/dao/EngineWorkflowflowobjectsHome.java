package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.EngineWorkflowflowobjects;

/**
 * Home object for domain model class EngineWorkflowflowobjects.
 * @see cn.edu.sjtu.iasdsp.dao.EngineWorkflowflowobjects
 * @author Hibernate Tools
 */
public class EngineWorkflowflowobjectsHome {

	private static final Log log = LogFactory.getLog(EngineWorkflowflowobjectsHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(EngineWorkflowflowobjects transientInstance) {
		log.debug("persisting EngineWorkflowflowobjects instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(EngineWorkflowflowobjects instance) {
		log.debug("attaching dirty EngineWorkflowflowobjects instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(EngineWorkflowflowobjects instance) {
		log.debug("attaching clean EngineWorkflowflowobjects instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(EngineWorkflowflowobjects persistentInstance) {
		log.debug("deleting EngineWorkflowflowobjects instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public EngineWorkflowflowobjects merge(EngineWorkflowflowobjects detachedInstance) {
		log.debug("merging EngineWorkflowflowobjects instance");
		try {
			EngineWorkflowflowobjects result = (EngineWorkflowflowobjects) sessionFactory.getCurrentSession()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineWorkflowflowobjects findById(java.lang.Integer id) {
		log.debug("getting EngineWorkflowflowobjects instance with id: " + id);
		try {
			EngineWorkflowflowobjects instance = (EngineWorkflowflowobjects) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.EngineWorkflowflowobjects", id);
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

	public List<EngineWorkflowflowobjects> findByExample(EngineWorkflowflowobjects instance) {
		log.debug("finding EngineWorkflowflowobjects instance by example");
		try {
			List<EngineWorkflowflowobjects> results = (List<EngineWorkflowflowobjects>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.dao.EngineWorkflowflowobjects").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
