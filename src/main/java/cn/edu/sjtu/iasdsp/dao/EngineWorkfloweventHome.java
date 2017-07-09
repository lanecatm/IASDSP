package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.EngineWorkflowevent;

/**
 * Home object for domain model class EngineWorkflowevent.
 * @see cn.edu.sjtu.iasdsp.dao.EngineWorkflowevent
 * @author Hibernate Tools
 */
public class EngineWorkfloweventHome {

	private static final Log log = LogFactory.getLog(EngineWorkfloweventHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(EngineWorkflowevent transientInstance) {
		log.debug("persisting EngineWorkflowevent instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(EngineWorkflowevent instance) {
		log.debug("attaching dirty EngineWorkflowevent instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(EngineWorkflowevent instance) {
		log.debug("attaching clean EngineWorkflowevent instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(EngineWorkflowevent persistentInstance) {
		log.debug("deleting EngineWorkflowevent instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public EngineWorkflowevent merge(EngineWorkflowevent detachedInstance) {
		log.debug("merging EngineWorkflowevent instance");
		try {
			EngineWorkflowevent result = (EngineWorkflowevent) sessionFactory.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineWorkflowevent findById(java.lang.Integer id) {
		log.debug("getting EngineWorkflowevent instance with id: " + id);
		try {
			EngineWorkflowevent instance = (EngineWorkflowevent) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.EngineWorkflowevent", id);
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

	public List<EngineWorkflowevent> findByExample(EngineWorkflowevent instance) {
		log.debug("finding EngineWorkflowevent instance by example");
		try {
			List<EngineWorkflowevent> results = (List<EngineWorkflowevent>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.dao.EngineWorkflowevent").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
