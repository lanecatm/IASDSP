package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.EngineSystemapplicationinformation;

/**
 * Home object for domain model class Systemapplicationinformation.
 * @see cn.edu.sjtu.iasdsp.model.EngineSystemapplicationinformation
 * @author Hibernate Tools
 */
@Stateless
public class EngineSystemapplicationinformationHome {

	private static final Log log = LogFactory.getLog(EngineSystemapplicationinformationHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(EngineSystemapplicationinformation transientInstance) {
		log.debug("persisting Systemapplicationinformation instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(EngineSystemapplicationinformation persistentInstance) {
		log.debug("removing Systemapplicationinformation instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public EngineSystemapplicationinformation merge(EngineSystemapplicationinformation detachedInstance) {
		log.debug("merging Systemapplicationinformation instance");
		try {
			EngineSystemapplicationinformation result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineSystemapplicationinformation findById(Integer id) {
		log.debug("getting Systemapplicationinformation instance with id: " + id);
		try {
			EngineSystemapplicationinformation instance = entityManager.find(EngineSystemapplicationinformation.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
