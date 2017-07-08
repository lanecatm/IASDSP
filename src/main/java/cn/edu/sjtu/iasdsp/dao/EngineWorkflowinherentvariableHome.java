package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.EngineWorkflowinherentvariable;

/**
 * Home object for domain model class Workflowinherentvariable.
 * @see cn.edu.sjtu.iasdsp.model.EngineWorkflowinherentvariable
 * @author Hibernate Tools
 */
@Stateless
public class EngineWorkflowinherentvariableHome {

	private static final Log log = LogFactory.getLog(EngineWorkflowinherentvariableHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(EngineWorkflowinherentvariable transientInstance) {
		log.debug("persisting Workflowinherentvariable instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(EngineWorkflowinherentvariable persistentInstance) {
		log.debug("removing Workflowinherentvariable instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public EngineWorkflowinherentvariable merge(EngineWorkflowinherentvariable detachedInstance) {
		log.debug("merging Workflowinherentvariable instance");
		try {
			EngineWorkflowinherentvariable result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineWorkflowinherentvariable findById(Integer id) {
		log.debug("getting Workflowinherentvariable instance with id: " + id);
		try {
			EngineWorkflowinherentvariable instance = entityManager.find(EngineWorkflowinherentvariable.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
