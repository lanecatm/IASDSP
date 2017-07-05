package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.Workflowcondition;

/**
 * Home object for domain model class Workflowcondition.
 * @see cn.edu.sjtu.iasdsp.model.Workflowcondition
 * @author Hibernate Tools
 */
@Stateless
public class WorkflowconditionHome {

	private static final Log log = LogFactory.getLog(WorkflowconditionHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(Workflowcondition transientInstance) {
		log.debug("persisting Workflowcondition instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(Workflowcondition persistentInstance) {
		log.debug("removing Workflowcondition instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public Workflowcondition merge(Workflowcondition detachedInstance) {
		log.debug("merging Workflowcondition instance");
		try {
			Workflowcondition result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Workflowcondition findById(Integer id) {
		log.debug("getting Workflowcondition instance with id: " + id);
		try {
			Workflowcondition instance = entityManager.find(Workflowcondition.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
