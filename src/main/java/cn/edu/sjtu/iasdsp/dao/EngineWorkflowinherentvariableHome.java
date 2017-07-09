package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.EngineWorkflowinherentvariable;

/**
 * Home object for domain model class EngineWorkflowinherentvariable.
 * @see cn.edu.sjtu.iasdsp.dao.EngineWorkflowinherentvariable
 * @author Hibernate Tools
 */
public class EngineWorkflowinherentvariableHome {

	private static final Log log = LogFactory.getLog(EngineWorkflowinherentvariableHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(EngineWorkflowinherentvariable transientInstance) {
		log.debug("persisting EngineWorkflowinherentvariable instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(EngineWorkflowinherentvariable instance) {
		log.debug("attaching dirty EngineWorkflowinherentvariable instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(EngineWorkflowinherentvariable instance) {
		log.debug("attaching clean EngineWorkflowinherentvariable instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(EngineWorkflowinherentvariable persistentInstance) {
		log.debug("deleting EngineWorkflowinherentvariable instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public EngineWorkflowinherentvariable merge(EngineWorkflowinherentvariable detachedInstance) {
		log.debug("merging EngineWorkflowinherentvariable instance");
		try {
			EngineWorkflowinherentvariable result = (EngineWorkflowinherentvariable) sessionFactory.getCurrentSession()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineWorkflowinherentvariable findById(java.lang.Integer id) {
		log.debug("getting EngineWorkflowinherentvariable instance with id: " + id);
		try {
			EngineWorkflowinherentvariable instance = (EngineWorkflowinherentvariable) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.EngineWorkflowinherentvariable", id);
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

	public List<EngineWorkflowinherentvariable> findByExample(EngineWorkflowinherentvariable instance) {
		log.debug("finding EngineWorkflowinherentvariable instance by example");
		try {
			List<EngineWorkflowinherentvariable> results = (List<EngineWorkflowinherentvariable>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.dao.EngineWorkflowinherentvariable").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
