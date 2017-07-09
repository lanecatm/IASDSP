package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.EngineProcessprocessecarule;

/**
 * Home object for domain model class EngineProcessprocessecarule.
 * @see cn.edu.sjtu.iasdsp.dao.EngineProcessprocessecarule
 * @author Hibernate Tools
 */
public class EngineProcessprocessecaruleHome {

	private static final Log log = LogFactory.getLog(EngineProcessprocessecaruleHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(EngineProcessprocessecarule transientInstance) {
		log.debug("persisting EngineProcessprocessecarule instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(EngineProcessprocessecarule instance) {
		log.debug("attaching dirty EngineProcessprocessecarule instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(EngineProcessprocessecarule instance) {
		log.debug("attaching clean EngineProcessprocessecarule instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(EngineProcessprocessecarule persistentInstance) {
		log.debug("deleting EngineProcessprocessecarule instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public EngineProcessprocessecarule merge(EngineProcessprocessecarule detachedInstance) {
		log.debug("merging EngineProcessprocessecarule instance");
		try {
			EngineProcessprocessecarule result = (EngineProcessprocessecarule) sessionFactory.getCurrentSession()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineProcessprocessecarule findById(java.lang.Integer id) {
		log.debug("getting EngineProcessprocessecarule instance with id: " + id);
		try {
			EngineProcessprocessecarule instance = (EngineProcessprocessecarule) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.EngineProcessprocessecarule", id);
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

	public List<EngineProcessprocessecarule> findByExample(EngineProcessprocessecarule instance) {
		log.debug("finding EngineProcessprocessecarule instance by example");
		try {
			List<EngineProcessprocessecarule> results = (List<EngineProcessprocessecarule>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.dao.EngineProcessprocessecarule").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
