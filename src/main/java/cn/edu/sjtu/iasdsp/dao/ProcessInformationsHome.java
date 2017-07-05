package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.ProcessInformations;

/**
 * Home object for domain model class ProcessInformations.
 * @see cn.edu.sjtu.iasdsp.model.ProcessInformations
 * @author Hibernate Tools
 */
@Stateless
public class ProcessInformationsHome {

	private static final Log log = LogFactory.getLog(ProcessInformationsHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(ProcessInformations transientInstance) {
		log.debug("persisting ProcessInformations instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(ProcessInformations persistentInstance) {
		log.debug("removing ProcessInformations instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public ProcessInformations merge(ProcessInformations detachedInstance) {
		log.debug("merging ProcessInformations instance");
		try {
			ProcessInformations result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public ProcessInformations findById(Integer id) {
		log.debug("getting ProcessInformations instance with id: " + id);
		try {
			ProcessInformations instance = entityManager.find(ProcessInformations.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
