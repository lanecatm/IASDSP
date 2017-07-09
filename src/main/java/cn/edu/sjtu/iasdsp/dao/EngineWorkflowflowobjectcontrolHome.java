package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.EngineWorkflowflowobjectcontrol;

/**
 * Home object for domain model class EngineWorkflowflowobjectcontrol.
 * @see cn.edu.sjtu.iasdsp.dao.EngineWorkflowflowobjectcontrol
 * @author Hibernate Tools
 */
public class EngineWorkflowflowobjectcontrolHome {

	private static final Log log = LogFactory.getLog(EngineWorkflowflowobjectcontrolHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(EngineWorkflowflowobjectcontrol transientInstance) {
		log.debug("persisting EngineWorkflowflowobjectcontrol instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(EngineWorkflowflowobjectcontrol instance) {
		log.debug("attaching dirty EngineWorkflowflowobjectcontrol instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(EngineWorkflowflowobjectcontrol instance) {
		log.debug("attaching clean EngineWorkflowflowobjectcontrol instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(EngineWorkflowflowobjectcontrol persistentInstance) {
		log.debug("deleting EngineWorkflowflowobjectcontrol instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public EngineWorkflowflowobjectcontrol merge(EngineWorkflowflowobjectcontrol detachedInstance) {
		log.debug("merging EngineWorkflowflowobjectcontrol instance");
		try {
			EngineWorkflowflowobjectcontrol result = (EngineWorkflowflowobjectcontrol) sessionFactory.getCurrentSession()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineWorkflowflowobjectcontrol findById(java.lang.Integer id) {
		log.debug("getting EngineWorkflowflowobjectcontrol instance with id: " + id);
		try {
			EngineWorkflowflowobjectcontrol instance = (EngineWorkflowflowobjectcontrol) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.EngineWorkflowflowobjectcontrol", id);
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

	public List<EngineWorkflowflowobjectcontrol> findByExample(EngineWorkflowflowobjectcontrol instance) {
		log.debug("finding EngineWorkflowflowobjectcontrol instance by example");
		try {
			List<EngineWorkflowflowobjectcontrol> results = (List<EngineWorkflowflowobjectcontrol>) sessionFactory
					.getCurrentSession().createCriteria("cn.edu.sjtu.iasdsp.dao.EngineWorkflowflowobjectcontrol")
					.add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
