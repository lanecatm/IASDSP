package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.EngineProcessinformation;

/**
 * Home object for domain model class Processinformation.
 * @see cn.edu.sjtu.iasdsp.model.EngineProcessinformation
 * @author Hibernate Tools
 */
@Stateless
public class ProcessinformationHome {

	private static final Log log = LogFactory.getLog(ProcessinformationHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(EngineProcessinformation transientInstance) {
		log.debug("persisting Processinformation instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(EngineProcessinformation persistentInstance) {
		log.debug("removing Processinformation instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public EngineProcessinformation merge(EngineProcessinformation detachedInstance) {
		log.debug("merging Processinformation instance");
		try {
			EngineProcessinformation result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineProcessinformation findById(Integer id) {
		log.debug("getting Processinformation instance with id: " + id);
		try {
			EngineProcessinformation instance = entityManager.find(EngineProcessinformation.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
