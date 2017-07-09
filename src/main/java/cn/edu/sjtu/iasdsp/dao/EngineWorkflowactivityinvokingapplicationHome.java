package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.EngineWorkflowactivityinvokingapplication;

/**
 * Home object for domain model class EngineWorkflowactivityinvokingapplication.
 * @see cn.edu.sjtu.iasdsp.dao.EngineWorkflowactivityinvokingapplication
 * @author Hibernate Tools
 */
public class EngineWorkflowactivityinvokingapplicationHome {

	private static final Log log = LogFactory.getLog(EngineWorkflowactivityinvokingapplicationHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(EngineWorkflowactivityinvokingapplication transientInstance) {
		log.debug("persisting EngineWorkflowactivityinvokingapplication instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(EngineWorkflowactivityinvokingapplication instance) {
		log.debug("attaching dirty EngineWorkflowactivityinvokingapplication instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(EngineWorkflowactivityinvokingapplication instance) {
		log.debug("attaching clean EngineWorkflowactivityinvokingapplication instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(EngineWorkflowactivityinvokingapplication persistentInstance) {
		log.debug("deleting EngineWorkflowactivityinvokingapplication instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public EngineWorkflowactivityinvokingapplication merge(EngineWorkflowactivityinvokingapplication detachedInstance) {
		log.debug("merging EngineWorkflowactivityinvokingapplication instance");
		try {
			EngineWorkflowactivityinvokingapplication result = (EngineWorkflowactivityinvokingapplication) sessionFactory
					.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineWorkflowactivityinvokingapplication findById(java.lang.Integer id) {
		log.debug("getting EngineWorkflowactivityinvokingapplication instance with id: " + id);
		try {
			EngineWorkflowactivityinvokingapplication instance = (EngineWorkflowactivityinvokingapplication) sessionFactory
					.getCurrentSession().get("cn.edu.sjtu.iasdsp.dao.EngineWorkflowactivityinvokingapplication", id);
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

	public List<EngineWorkflowactivityinvokingapplication> findByExample(EngineWorkflowactivityinvokingapplication instance) {
		log.debug("finding EngineWorkflowactivityinvokingapplication instance by example");
		try {
			List<EngineWorkflowactivityinvokingapplication> results = (List<EngineWorkflowactivityinvokingapplication>) sessionFactory
					.getCurrentSession().createCriteria("cn.edu.sjtu.iasdsp.dao.EngineWorkflowactivityinvokingapplication")
					.add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
