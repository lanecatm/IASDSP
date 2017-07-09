package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.EngineProcesscontrolflowcondition;

/**
 * Home object for domain model class EngineProcesscontrolflowcondition.
 * @see cn.edu.sjtu.iasdsp.dao.EngineProcesscontrolflowcondition
 * @author Hibernate Tools
 */
public class EngineProcesscontrolflowconditionHome {

	private static final Log log = LogFactory.getLog(EngineProcesscontrolflowconditionHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(EngineProcesscontrolflowcondition transientInstance) {
		log.debug("persisting EngineProcesscontrolflowcondition instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(EngineProcesscontrolflowcondition instance) {
		log.debug("attaching dirty EngineProcesscontrolflowcondition instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(EngineProcesscontrolflowcondition instance) {
		log.debug("attaching clean EngineProcesscontrolflowcondition instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(EngineProcesscontrolflowcondition persistentInstance) {
		log.debug("deleting EngineProcesscontrolflowcondition instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public EngineProcesscontrolflowcondition merge(EngineProcesscontrolflowcondition detachedInstance) {
		log.debug("merging EngineProcesscontrolflowcondition instance");
		try {
			EngineProcesscontrolflowcondition result = (EngineProcesscontrolflowcondition) sessionFactory.getCurrentSession()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineProcesscontrolflowcondition findById(java.lang.Integer id) {
		log.debug("getting EngineProcesscontrolflowcondition instance with id: " + id);
		try {
			EngineProcesscontrolflowcondition instance = (EngineProcesscontrolflowcondition) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.EngineProcesscontrolflowcondition", id);
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

	public List<EngineProcesscontrolflowcondition> findByExample(EngineProcesscontrolflowcondition instance) {
		log.debug("finding EngineProcesscontrolflowcondition instance by example");
		try {
			List<EngineProcesscontrolflowcondition> results = (List<EngineProcesscontrolflowcondition>) sessionFactory
					.getCurrentSession().createCriteria("cn.edu.sjtu.iasdsp.dao.EngineProcesscontrolflowcondition")
					.add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
