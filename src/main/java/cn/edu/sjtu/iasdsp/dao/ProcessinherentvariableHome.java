package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.EngineProcessinherentvariable;

/**
 * Home object for domain model class Processinherentvariable.
 * @see cn.edu.sjtu.iasdsp.model.EngineProcessinherentvariable
 * @author Hibernate Tools
 */
@Stateless
public class ProcessinherentvariableHome {

	private static final Log log = LogFactory.getLog(ProcessinherentvariableHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(EngineProcessinherentvariable transientInstance) {
		log.debug("persisting Processinherentvariable instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(EngineProcessinherentvariable persistentInstance) {
		log.debug("removing Processinherentvariable instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public EngineProcessinherentvariable merge(EngineProcessinherentvariable detachedInstance) {
		log.debug("merging Processinherentvariable instance");
		try {
			EngineProcessinherentvariable result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineProcessinherentvariable findById(Integer id) {
		log.debug("getting Processinherentvariable instance with id: " + id);
		try {
			EngineProcessinherentvariable instance = entityManager.find(EngineProcessinherentvariable.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
