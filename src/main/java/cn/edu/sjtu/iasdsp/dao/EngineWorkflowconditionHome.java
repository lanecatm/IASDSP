package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.EngineWorkflowcondition;

/**
 * Home object for domain model class Workflowcondition.
 * @see cn.edu.sjtu.iasdsp.model.EngineWorkflowcondition
 * @author Hibernate Tools
 */
@Stateless
public class EngineWorkflowconditionHome {

	private static final Log log = LogFactory.getLog(EngineWorkflowconditionHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(EngineWorkflowcondition transientInstance) {
		log.debug("persisting Workflowcondition instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(EngineWorkflowcondition persistentInstance) {
		log.debug("removing Workflowcondition instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public EngineWorkflowcondition merge(EngineWorkflowcondition detachedInstance) {
		log.debug("merging Workflowcondition instance");
		try {
			EngineWorkflowcondition result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineWorkflowcondition findById(Integer id) {
		log.debug("getting Workflowcondition instance with id: " + id);
		try {
			EngineWorkflowcondition instance = entityManager.find(EngineWorkflowcondition.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
