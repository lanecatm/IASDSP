package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.EngineSchemaMigrations;

/**
 * Home object for domain model class SchemaMigrations.
 * @see cn.edu.sjtu.iasdsp.model.EngineSchemaMigrations
 * @author Hibernate Tools
 */
@Stateless
public class EngineSchemaMigrationsHome {

	private static final Log log = LogFactory.getLog(EngineSchemaMigrationsHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(EngineSchemaMigrations transientInstance) {
		log.debug("persisting SchemaMigrations instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(EngineSchemaMigrations persistentInstance) {
		log.debug("removing SchemaMigrations instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public EngineSchemaMigrations merge(EngineSchemaMigrations detachedInstance) {
		log.debug("merging SchemaMigrations instance");
		try {
			EngineSchemaMigrations result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineSchemaMigrations findById(String id) {
		log.debug("getting SchemaMigrations instance with id: " + id);
		try {
			EngineSchemaMigrations instance = entityManager.find(EngineSchemaMigrations.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
