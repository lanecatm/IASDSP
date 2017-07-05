package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.EngineProcessprocessecarule;

/**
 * Home object for domain model class Processprocessecarule.
 * @see cn.edu.sjtu.iasdsp.model.EngineProcessprocessecarule
 * @author Hibernate Tools
 */
@Stateless
public class ProcessprocessecaruleHome {

	private static final Log log = LogFactory.getLog(ProcessprocessecaruleHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(EngineProcessprocessecarule transientInstance) {
		log.debug("persisting Processprocessecarule instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(EngineProcessprocessecarule persistentInstance) {
		log.debug("removing Processprocessecarule instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public EngineProcessprocessecarule merge(EngineProcessprocessecarule detachedInstance) {
		log.debug("merging Processprocessecarule instance");
		try {
			EngineProcessprocessecarule result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineProcessprocessecarule findById(Integer id) {
		log.debug("getting Processprocessecarule instance with id: " + id);
		try {
			EngineProcessprocessecarule instance = entityManager.find(EngineProcessprocessecarule.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
