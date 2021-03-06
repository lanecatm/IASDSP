package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.EngineWorkflowprocessecarule;

/**
 * Home object for domain model class EngineWorkflowprocessecarule.
 * @see cn.edu.sjtu.iasdsp.dao.EngineWorkflowprocessecarule
 * @author Hibernate Tools
 */
public class EngineWorkflowprocessecaruleHome {

	private static final Log log = LogFactory.getLog(EngineWorkflowprocessecaruleHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(EngineWorkflowprocessecarule transientInstance) {
		log.debug("persisting EngineWorkflowprocessecarule instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(EngineWorkflowprocessecarule instance) {
		log.debug("attaching dirty EngineWorkflowprocessecarule instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(EngineWorkflowprocessecarule instance) {
		log.debug("attaching clean EngineWorkflowprocessecarule instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(EngineWorkflowprocessecarule persistentInstance) {
		log.debug("deleting EngineWorkflowprocessecarule instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public EngineWorkflowprocessecarule merge(EngineWorkflowprocessecarule detachedInstance) {
		log.debug("merging EngineWorkflowprocessecarule instance");
		try {
			EngineWorkflowprocessecarule result = (EngineWorkflowprocessecarule) sessionFactory.getCurrentSession()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineWorkflowprocessecarule findById(java.lang.Integer id) {
		log.debug("getting EngineWorkflowprocessecarule instance with id: " + id);
		try {
			EngineWorkflowprocessecarule instance = (EngineWorkflowprocessecarule) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.EngineWorkflowprocessecarule", id);
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

	public List<EngineWorkflowprocessecarule> findByExample(EngineWorkflowprocessecarule instance) {
		log.debug("finding EngineWorkflowprocessecarule instance by example");
		try {
			List<EngineWorkflowprocessecarule> results = (List<EngineWorkflowprocessecarule>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.dao.EngineWorkflowprocessecarule").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
