package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.EngineWorkflowflow;

/**
 * Home object for domain model class Workflowflow.
 * @see cn.edu.sjtu.iasdsp.model.EngineWorkflowflow
 * @author Hibernate Tools
 */
@Stateless
public class WorkflowflowHome {

	private static final Log log = LogFactory.getLog(WorkflowflowHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(EngineWorkflowflow transientInstance) {
		log.debug("persisting Workflowflow instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(EngineWorkflowflow persistentInstance) {
		log.debug("removing Workflowflow instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public EngineWorkflowflow merge(EngineWorkflowflow detachedInstance) {
		log.debug("merging Workflowflow instance");
		try {
			EngineWorkflowflow result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineWorkflowflow findById(Integer id) {
		log.debug("getting Workflowflow instance with id: " + id);
		try {
			EngineWorkflowflow instance = entityManager.find(EngineWorkflowflow.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
