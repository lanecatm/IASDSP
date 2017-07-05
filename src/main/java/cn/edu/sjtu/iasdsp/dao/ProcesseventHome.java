package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.EngineProcessevent;

/**
 * Home object for domain model class Processevent.
 * @see cn.edu.sjtu.iasdsp.model.EngineProcessevent
 * @author Hibernate Tools
 */
@Stateless
public class ProcesseventHome {

	private static final Log log = LogFactory.getLog(ProcesseventHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(EngineProcessevent transientInstance) {
		log.debug("persisting Processevent instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(EngineProcessevent persistentInstance) {
		log.debug("removing Processevent instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public EngineProcessevent merge(EngineProcessevent detachedInstance) {
		log.debug("merging Processevent instance");
		try {
			EngineProcessevent result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineProcessevent findById(Integer id) {
		log.debug("getting Processevent instance with id: " + id);
		try {
			EngineProcessevent instance = entityManager.find(EngineProcessevent.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
