package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.EngineProcessflow;

/**
 * Home object for domain model class Processflow.
 * @see cn.edu.sjtu.iasdsp.model.EngineProcessflow
 * @author Hibernate Tools
 */
@Stateless
public class ProcessflowHome {

	private static final Log log = LogFactory.getLog(ProcessflowHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(EngineProcessflow transientInstance) {
		log.debug("persisting Processflow instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(EngineProcessflow persistentInstance) {
		log.debug("removing Processflow instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public EngineProcessflow merge(EngineProcessflow detachedInstance) {
		log.debug("merging Processflow instance");
		try {
			EngineProcessflow result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineProcessflow findById(Integer id) {
		log.debug("getting Processflow instance with id: " + id);
		try {
			EngineProcessflow instance = entityManager.find(EngineProcessflow.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
