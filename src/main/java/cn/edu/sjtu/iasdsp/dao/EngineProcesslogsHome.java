package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.EngineProcesslogs;

/**
 * Home object for domain model class EngineProcesslogs.
 * @see cn.edu.sjtu.iasdsp.dao.EngineProcesslogs
 * @author Hibernate Tools
 */
public class EngineProcesslogsHome {

	private static final Log log = LogFactory.getLog(EngineProcesslogsHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(EngineProcesslogs transientInstance) {
		log.debug("persisting EngineProcesslogs instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(EngineProcesslogs instance) {
		log.debug("attaching dirty EngineProcesslogs instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(EngineProcesslogs instance) {
		log.debug("attaching clean EngineProcesslogs instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(EngineProcesslogs persistentInstance) {
		log.debug("deleting EngineProcesslogs instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public EngineProcesslogs merge(EngineProcesslogs detachedInstance) {
		log.debug("merging EngineProcesslogs instance");
		try {
			EngineProcesslogs result = (EngineProcesslogs) sessionFactory.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineProcesslogs findById(java.lang.Integer id) {
		log.debug("getting EngineProcesslogs instance with id: " + id);
		try {
			EngineProcesslogs instance = (EngineProcesslogs) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.EngineProcesslogs", id);
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

	public List<EngineProcesslogs> findByExample(EngineProcesslogs instance) {
		log.debug("finding EngineProcesslogs instance by example");
		try {
			List<EngineProcesslogs> results = (List<EngineProcesslogs>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.dao.EngineProcesslogs").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
