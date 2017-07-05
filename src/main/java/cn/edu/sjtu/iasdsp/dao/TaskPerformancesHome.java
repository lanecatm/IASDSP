package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.TaskPerformance;

/**
 * Home object for domain model class TaskPerformances.
 * @see cn.edu.sjtu.iasdsp.model.TaskPerformance
 * @author Hibernate Tools
 */
@Stateless
public class TaskPerformancesHome {

	private static final Log log = LogFactory.getLog(TaskPerformancesHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(TaskPerformance transientInstance) {
		log.debug("persisting TaskPerformances instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(TaskPerformance persistentInstance) {
		log.debug("removing TaskPerformances instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public TaskPerformance merge(TaskPerformance detachedInstance) {
		log.debug("merging TaskPerformances instance");
		try {
			TaskPerformance result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public TaskPerformance findById(Integer id) {
		log.debug("getting TaskPerformances instance with id: " + id);
		try {
			TaskPerformance instance = entityManager.find(TaskPerformance.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
