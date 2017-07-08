package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.EngineProcesslogs;

/**
 * Home object for domain model class Processlogs.
 * @see cn.edu.sjtu.iasdsp.model.EngineProcesslogs
 * @author Hibernate Tools
 */
@Stateless
public class EngineProcesslogsHome {

	private static final Log log = LogFactory.getLog(EngineProcesslogsHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(EngineProcesslogs transientInstance) {
		log.debug("persisting Processlogs instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(EngineProcesslogs persistentInstance) {
		log.debug("removing Processlogs instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public EngineProcesslogs merge(EngineProcesslogs detachedInstance) {
		log.debug("merging Processlogs instance");
		try {
			EngineProcesslogs result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineProcesslogs findById(Integer id) {
		log.debug("getting Processlogs instance with id: " + id);
		try {
			EngineProcesslogs instance = entityManager.find(EngineProcesslogs.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
