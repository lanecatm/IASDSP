package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.Workflowapplication;

/**
 * Home object for domain model class Workflowapplication.
 * @see cn.edu.sjtu.iasdsp.model.Workflowapplication
 * @author Hibernate Tools
 */
@Stateless
public class WorkflowapplicationHome {

	private static final Log log = LogFactory.getLog(WorkflowapplicationHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(Workflowapplication transientInstance) {
		log.debug("persisting Workflowapplication instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(Workflowapplication persistentInstance) {
		log.debug("removing Workflowapplication instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public Workflowapplication merge(Workflowapplication detachedInstance) {
		log.debug("merging Workflowapplication instance");
		try {
			Workflowapplication result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Workflowapplication findById(Integer id) {
		log.debug("getting Workflowapplication instance with id: " + id);
		try {
			Workflowapplication instance = entityManager.find(Workflowapplication.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
