package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.EnginePackageinformation;

/**
 * Home object for domain model class EnginePackageinformation.
 * @see cn.edu.sjtu.iasdsp.dao.EnginePackageinformation
 * @author Hibernate Tools
 */
public class EnginePackageinformationHome {

	private static final Log log = LogFactory.getLog(EnginePackageinformationHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(EnginePackageinformation transientInstance) {
		log.debug("persisting EnginePackageinformation instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(EnginePackageinformation instance) {
		log.debug("attaching dirty EnginePackageinformation instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(EnginePackageinformation instance) {
		log.debug("attaching clean EnginePackageinformation instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(EnginePackageinformation persistentInstance) {
		log.debug("deleting EnginePackageinformation instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public EnginePackageinformation merge(EnginePackageinformation detachedInstance) {
		log.debug("merging EnginePackageinformation instance");
		try {
			EnginePackageinformation result = (EnginePackageinformation) sessionFactory.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EnginePackageinformation findById(java.lang.Integer id) {
		log.debug("getting EnginePackageinformation instance with id: " + id);
		try {
			EnginePackageinformation instance = (EnginePackageinformation) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.EnginePackageinformation", id);
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

	public List<EnginePackageinformation> findByExample(EnginePackageinformation instance) {
		log.debug("finding EnginePackageinformation instance by example");
		try {
			List<EnginePackageinformation> results = (List<EnginePackageinformation>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.dao.EnginePackageinformation").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
