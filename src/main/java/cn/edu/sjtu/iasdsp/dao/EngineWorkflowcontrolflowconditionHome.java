package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.EngineWorkflowcontrolflowcondition;

/**
 * Home object for domain model class Workflowcontrolflowcondition.
 * @see cn.edu.sjtu.iasdsp.model.EngineWorkflowcontrolflowcondition
 * @author Hibernate Tools
 */
@Stateless
public class EngineWorkflowcontrolflowconditionHome {

	private static final Log log = LogFactory.getLog(EngineWorkflowcontrolflowconditionHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(EngineWorkflowcontrolflowcondition transientInstance) {
		log.debug("persisting Workflowcontrolflowcondition instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(EngineWorkflowcontrolflowcondition persistentInstance) {
		log.debug("removing Workflowcontrolflowcondition instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public EngineWorkflowcontrolflowcondition merge(EngineWorkflowcontrolflowcondition detachedInstance) {
		log.debug("merging Workflowcontrolflowcondition instance");
		try {
			EngineWorkflowcontrolflowcondition result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineWorkflowcontrolflowcondition findById(Integer id) {
		log.debug("getting Workflowcontrolflowcondition instance with id: " + id);
		try {
			EngineWorkflowcontrolflowcondition instance = entityManager.find(EngineWorkflowcontrolflowcondition.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
