package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.EngineProcessapplication;

/**
 * Home object for domain model class Processapplication.
 * @see cn.edu.sjtu.iasdsp.model.EngineProcessapplication
 * @author Hibernate Tools
 */
@Stateless
public class EngineProcessapplicationHome {

	private static final Log log = LogFactory.getLog(EngineProcessapplicationHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(EngineProcessapplication transientInstance) {
		log.debug("persisting Processapplication instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(EngineProcessapplication persistentInstance) {
		log.debug("removing Processapplication instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public EngineProcessapplication merge(EngineProcessapplication detachedInstance) {
		log.debug("merging Processapplication instance");
		try {
			EngineProcessapplication result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineProcessapplication findById(Integer id) {
		log.debug("getting Processapplication instance with id: " + id);
		try {
			EngineProcessapplication instance = entityManager.find(EngineProcessapplication.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
