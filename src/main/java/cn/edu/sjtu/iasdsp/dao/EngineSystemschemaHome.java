package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.EngineSystemschema;

/**
 * Home object for domain model class EngineSystemschema.
 * @see cn.edu.sjtu.iasdsp.dao.EngineSystemschema
 * @author Hibernate Tools
 */
public class EngineSystemschemaHome {

	private static final Log log = LogFactory.getLog(EngineSystemschemaHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(EngineSystemschema transientInstance) {
		log.debug("persisting EngineSystemschema instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(EngineSystemschema instance) {
		log.debug("attaching dirty EngineSystemschema instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(EngineSystemschema instance) {
		log.debug("attaching clean EngineSystemschema instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(EngineSystemschema persistentInstance) {
		log.debug("deleting EngineSystemschema instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public EngineSystemschema merge(EngineSystemschema detachedInstance) {
		log.debug("merging EngineSystemschema instance");
		try {
			EngineSystemschema result = (EngineSystemschema) sessionFactory.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineSystemschema findById(java.lang.Integer id) {
		log.debug("getting EngineSystemschema instance with id: " + id);
		try {
			EngineSystemschema instance = (EngineSystemschema) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.EngineSystemschema", id);
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

	public List<EngineSystemschema> findByExample(EngineSystemschema instance) {
		log.debug("finding EngineSystemschema instance by example");
		try {
			List<EngineSystemschema> results = (List<EngineSystemschema>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.dao.EngineSystemschema").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
