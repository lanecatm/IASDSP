package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.EngineProcessactivityinformation;

/**
 * Home object for domain model class Processactivityinformation.
 * @see cn.edu.sjtu.iasdsp.model.EngineProcessactivityinformation
 * @author Hibernate Tools
 */
@Stateless
public class EngineProcessactivityinformationHome {

	private static final Log log = LogFactory.getLog(EngineProcessactivityinformationHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(EngineProcessactivityinformation transientInstance) {
		log.debug("persisting Processactivityinformation instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(EngineProcessactivityinformation persistentInstance) {
		log.debug("removing Processactivityinformation instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public EngineProcessactivityinformation merge(EngineProcessactivityinformation detachedInstance) {
		log.debug("merging Processactivityinformation instance");
		try {
			EngineProcessactivityinformation result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineProcessactivityinformation findById(Integer id) {
		log.debug("getting Processactivityinformation instance with id: " + id);
		try {
			EngineProcessactivityinformation instance = entityManager.find(EngineProcessactivityinformation.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
