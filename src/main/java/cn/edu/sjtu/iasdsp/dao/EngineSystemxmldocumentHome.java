package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.EngineSystemxmldocument;

/**
 * Home object for domain model class EngineSystemxmldocument.
 * @see cn.edu.sjtu.iasdsp.dao.EngineSystemxmldocument
 * @author Hibernate Tools
 */
public class EngineSystemxmldocumentHome {

	private static final Log log = LogFactory.getLog(EngineSystemxmldocumentHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(EngineSystemxmldocument transientInstance) {
		log.debug("persisting EngineSystemxmldocument instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(EngineSystemxmldocument instance) {
		log.debug("attaching dirty EngineSystemxmldocument instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(EngineSystemxmldocument instance) {
		log.debug("attaching clean EngineSystemxmldocument instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(EngineSystemxmldocument persistentInstance) {
		log.debug("deleting EngineSystemxmldocument instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public EngineSystemxmldocument merge(EngineSystemxmldocument detachedInstance) {
		log.debug("merging EngineSystemxmldocument instance");
		try {
			EngineSystemxmldocument result = (EngineSystemxmldocument) sessionFactory.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineSystemxmldocument findById(java.lang.Integer id) {
		log.debug("getting EngineSystemxmldocument instance with id: " + id);
		try {
			EngineSystemxmldocument instance = (EngineSystemxmldocument) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.EngineSystemxmldocument", id);
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

	public List<EngineSystemxmldocument> findByExample(EngineSystemxmldocument instance) {
		log.debug("finding EngineSystemxmldocument instance by example");
		try {
			List<EngineSystemxmldocument> results = (List<EngineSystemxmldocument>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.dao.EngineSystemxmldocument").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
