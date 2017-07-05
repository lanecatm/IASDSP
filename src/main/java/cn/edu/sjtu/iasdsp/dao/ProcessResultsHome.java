package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.ProcessResults;

/**
 * Home object for domain model class ProcessResults.
 * @see cn.edu.sjtu.iasdsp.model.ProcessResults
 * @author Hibernate Tools
 */
@Stateless
public class ProcessResultsHome {

	private static final Log log = LogFactory.getLog(ProcessResultsHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(ProcessResults transientInstance) {
		log.debug("persisting ProcessResults instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(ProcessResults persistentInstance) {
		log.debug("removing ProcessResults instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public ProcessResults merge(ProcessResults detachedInstance) {
		log.debug("merging ProcessResults instance");
		try {
			ProcessResults result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public ProcessResults findById(Integer id) {
		log.debug("getting ProcessResults instance with id: " + id);
		try {
			ProcessResults instance = entityManager.find(ProcessResults.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
