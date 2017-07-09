package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.EngineWorkflowactivityinputmapping;

/**
 * Home object for domain model class EngineWorkflowactivityinputmapping.
 * @see cn.edu.sjtu.iasdsp.dao.EngineWorkflowactivityinputmapping
 * @author Hibernate Tools
 */
public class EngineWorkflowactivityinputmappingHome {

	private static final Log log = LogFactory.getLog(EngineWorkflowactivityinputmappingHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(EngineWorkflowactivityinputmapping transientInstance) {
		log.debug("persisting EngineWorkflowactivityinputmapping instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(EngineWorkflowactivityinputmapping instance) {
		log.debug("attaching dirty EngineWorkflowactivityinputmapping instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(EngineWorkflowactivityinputmapping instance) {
		log.debug("attaching clean EngineWorkflowactivityinputmapping instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(EngineWorkflowactivityinputmapping persistentInstance) {
		log.debug("deleting EngineWorkflowactivityinputmapping instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public EngineWorkflowactivityinputmapping merge(EngineWorkflowactivityinputmapping detachedInstance) {
		log.debug("merging EngineWorkflowactivityinputmapping instance");
		try {
			EngineWorkflowactivityinputmapping result = (EngineWorkflowactivityinputmapping) sessionFactory.getCurrentSession()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineWorkflowactivityinputmapping findById(java.lang.Integer id) {
		log.debug("getting EngineWorkflowactivityinputmapping instance with id: " + id);
		try {
			EngineWorkflowactivityinputmapping instance = (EngineWorkflowactivityinputmapping) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.EngineWorkflowactivityinputmapping", id);
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

	public List<EngineWorkflowactivityinputmapping> findByExample(EngineWorkflowactivityinputmapping instance) {
		log.debug("finding EngineWorkflowactivityinputmapping instance by example");
		try {
			List<EngineWorkflowactivityinputmapping> results = (List<EngineWorkflowactivityinputmapping>) sessionFactory
					.getCurrentSession().createCriteria("cn.edu.sjtu.iasdsp.dao.EngineWorkflowactivityinputmapping")
					.add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
