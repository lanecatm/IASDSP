package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.EngineWorkflowcondition;

/**
 * Home object for domain model class EngineWorkflowcondition.
 * @see cn.edu.sjtu.iasdsp.dao.EngineWorkflowcondition
 * @author Hibernate Tools
 */
public class EngineWorkflowconditionHome {

	private static final Log log = LogFactory.getLog(EngineWorkflowconditionHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(EngineWorkflowcondition transientInstance) {
		log.debug("persisting EngineWorkflowcondition instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(EngineWorkflowcondition instance) {
		log.debug("attaching dirty EngineWorkflowcondition instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(EngineWorkflowcondition instance) {
		log.debug("attaching clean EngineWorkflowcondition instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(EngineWorkflowcondition persistentInstance) {
		log.debug("deleting EngineWorkflowcondition instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public EngineWorkflowcondition merge(EngineWorkflowcondition detachedInstance) {
		log.debug("merging EngineWorkflowcondition instance");
		try {
			EngineWorkflowcondition result = (EngineWorkflowcondition) sessionFactory.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineWorkflowcondition findById(java.lang.Integer id) {
		log.debug("getting EngineWorkflowcondition instance with id: " + id);
		try {
			EngineWorkflowcondition instance = (EngineWorkflowcondition) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.EngineWorkflowcondition", id);
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

	public List<EngineWorkflowcondition> findByExample(EngineWorkflowcondition instance) {
		log.debug("finding EngineWorkflowcondition instance by example");
		try {
			List<EngineWorkflowcondition> results = (List<EngineWorkflowcondition>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.dao.EngineWorkflowcondition").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
