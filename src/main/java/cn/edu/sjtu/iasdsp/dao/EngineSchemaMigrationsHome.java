package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.EngineSchemaMigrations;

/**
 * Home object for domain model class EngineSchemaMigrations.
 * @see cn.edu.sjtu.iasdsp.dao.EngineSchemaMigrations
 * @author Hibernate Tools
 */
public class EngineSchemaMigrationsHome {

	private static final Log log = LogFactory.getLog(EngineSchemaMigrationsHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(EngineSchemaMigrations transientInstance) {
		log.debug("persisting EngineSchemaMigrations instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(EngineSchemaMigrations instance) {
		log.debug("attaching dirty EngineSchemaMigrations instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(EngineSchemaMigrations instance) {
		log.debug("attaching clean EngineSchemaMigrations instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(EngineSchemaMigrations persistentInstance) {
		log.debug("deleting EngineSchemaMigrations instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public EngineSchemaMigrations merge(EngineSchemaMigrations detachedInstance) {
		log.debug("merging EngineSchemaMigrations instance");
		try {
			EngineSchemaMigrations result = (EngineSchemaMigrations) sessionFactory.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineSchemaMigrations findById(java.lang.String id) {
		log.debug("getting EngineSchemaMigrations instance with id: " + id);
		try {
			EngineSchemaMigrations instance = (EngineSchemaMigrations) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.EngineSchemaMigrations", id);
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

	public List<EngineSchemaMigrations> findByExample(EngineSchemaMigrations instance) {
		log.debug("finding EngineSchemaMigrations instance by example");
		try {
			List<EngineSchemaMigrations> results = (List<EngineSchemaMigrations>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.dao.EngineSchemaMigrations").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
