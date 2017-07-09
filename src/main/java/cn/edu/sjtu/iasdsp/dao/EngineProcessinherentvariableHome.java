package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.EngineProcessinherentvariable;

/**
 * Home object for domain model class EngineProcessinherentvariable.
 * @see cn.edu.sjtu.iasdsp.dao.EngineProcessinherentvariable
 * @author Hibernate Tools
 */
public class EngineProcessinherentvariableHome {

	private static final Log log = LogFactory.getLog(EngineProcessinherentvariableHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(EngineProcessinherentvariable transientInstance) {
		log.debug("persisting EngineProcessinherentvariable instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(EngineProcessinherentvariable instance) {
		log.debug("attaching dirty EngineProcessinherentvariable instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(EngineProcessinherentvariable instance) {
		log.debug("attaching clean EngineProcessinherentvariable instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(EngineProcessinherentvariable persistentInstance) {
		log.debug("deleting EngineProcessinherentvariable instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public EngineProcessinherentvariable merge(EngineProcessinherentvariable detachedInstance) {
		log.debug("merging EngineProcessinherentvariable instance");
		try {
			EngineProcessinherentvariable result = (EngineProcessinherentvariable) sessionFactory.getCurrentSession()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineProcessinherentvariable findById(java.lang.Integer id) {
		log.debug("getting EngineProcessinherentvariable instance with id: " + id);
		try {
			EngineProcessinherentvariable instance = (EngineProcessinherentvariable) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.EngineProcessinherentvariable", id);
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

	public List<EngineProcessinherentvariable> findByExample(EngineProcessinherentvariable instance) {
		log.debug("finding EngineProcessinherentvariable instance by example");
		try {
			List<EngineProcessinherentvariable> results = (List<EngineProcessinherentvariable>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.dao.EngineProcessinherentvariable").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
