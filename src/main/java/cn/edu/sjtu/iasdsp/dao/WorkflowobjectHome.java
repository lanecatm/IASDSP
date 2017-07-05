package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.EngineWorkflowobject;

/**
 * Home object for domain model class Workflowobject.
 * @see cn.edu.sjtu.iasdsp.model.EngineWorkflowobject
 * @author Hibernate Tools
 */
@Stateless
public class WorkflowobjectHome {

	private static final Log log = LogFactory.getLog(WorkflowobjectHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(EngineWorkflowobject transientInstance) {
		log.debug("persisting Workflowobject instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(EngineWorkflowobject persistentInstance) {
		log.debug("removing Workflowobject instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public EngineWorkflowobject merge(EngineWorkflowobject detachedInstance) {
		log.debug("merging Workflowobject instance");
		try {
			EngineWorkflowobject result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineWorkflowobject findById(Integer id) {
		log.debug("getting Workflowobject instance with id: " + id);
		try {
			EngineWorkflowobject instance = entityManager.find(EngineWorkflowobject.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
