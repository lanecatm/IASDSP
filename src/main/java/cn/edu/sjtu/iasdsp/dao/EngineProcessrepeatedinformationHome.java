package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.EngineProcessrepeatedinformation;

/**
 * Home object for domain model class EngineProcessrepeatedinformation.
 * @see cn.edu.sjtu.iasdsp.dao.EngineProcessrepeatedinformation
 * @author Hibernate Tools
 */
public class EngineProcessrepeatedinformationHome {

	private static final Log log = LogFactory.getLog(EngineProcessrepeatedinformationHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(EngineProcessrepeatedinformation transientInstance) {
		log.debug("persisting EngineProcessrepeatedinformation instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(EngineProcessrepeatedinformation instance) {
		log.debug("attaching dirty EngineProcessrepeatedinformation instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(EngineProcessrepeatedinformation instance) {
		log.debug("attaching clean EngineProcessrepeatedinformation instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(EngineProcessrepeatedinformation persistentInstance) {
		log.debug("deleting EngineProcessrepeatedinformation instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public EngineProcessrepeatedinformation merge(EngineProcessrepeatedinformation detachedInstance) {
		log.debug("merging EngineProcessrepeatedinformation instance");
		try {
			EngineProcessrepeatedinformation result = (EngineProcessrepeatedinformation) sessionFactory.getCurrentSession()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineProcessrepeatedinformation findById(java.lang.Integer id) {
		log.debug("getting EngineProcessrepeatedinformation instance with id: " + id);
		try {
			EngineProcessrepeatedinformation instance = (EngineProcessrepeatedinformation) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.EngineProcessrepeatedinformation", id);
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

	public List<EngineProcessrepeatedinformation> findByExample(EngineProcessrepeatedinformation instance) {
		log.debug("finding EngineProcessrepeatedinformation instance by example");
		try {
			List<EngineProcessrepeatedinformation> results = (List<EngineProcessrepeatedinformation>) sessionFactory
					.getCurrentSession().createCriteria("cn.edu.sjtu.iasdsp.dao.EngineProcessrepeatedinformation")
					.add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
