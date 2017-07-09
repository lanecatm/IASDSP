package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.EngineWorkflowcontrolflowcondition;

/**
 * Home object for domain model class EngineWorkflowcontrolflowcondition.
 * @see cn.edu.sjtu.iasdsp.dao.EngineWorkflowcontrolflowcondition
 * @author Hibernate Tools
 */
public class EngineWorkflowcontrolflowconditionHome {

	private static final Log log = LogFactory.getLog(EngineWorkflowcontrolflowconditionHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(EngineWorkflowcontrolflowcondition transientInstance) {
		log.debug("persisting EngineWorkflowcontrolflowcondition instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(EngineWorkflowcontrolflowcondition instance) {
		log.debug("attaching dirty EngineWorkflowcontrolflowcondition instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(EngineWorkflowcontrolflowcondition instance) {
		log.debug("attaching clean EngineWorkflowcontrolflowcondition instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(EngineWorkflowcontrolflowcondition persistentInstance) {
		log.debug("deleting EngineWorkflowcontrolflowcondition instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public EngineWorkflowcontrolflowcondition merge(EngineWorkflowcontrolflowcondition detachedInstance) {
		log.debug("merging EngineWorkflowcontrolflowcondition instance");
		try {
			EngineWorkflowcontrolflowcondition result = (EngineWorkflowcontrolflowcondition) sessionFactory.getCurrentSession()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineWorkflowcontrolflowcondition findById(java.lang.Integer id) {
		log.debug("getting EngineWorkflowcontrolflowcondition instance with id: " + id);
		try {
			EngineWorkflowcontrolflowcondition instance = (EngineWorkflowcontrolflowcondition) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.EngineWorkflowcontrolflowcondition", id);
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

	public List<EngineWorkflowcontrolflowcondition> findByExample(EngineWorkflowcontrolflowcondition instance) {
		log.debug("finding EngineWorkflowcontrolflowcondition instance by example");
		try {
			List<EngineWorkflowcontrolflowcondition> results = (List<EngineWorkflowcontrolflowcondition>) sessionFactory
					.getCurrentSession().createCriteria("cn.edu.sjtu.iasdsp.dao.EngineWorkflowcontrolflowcondition")
					.add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
