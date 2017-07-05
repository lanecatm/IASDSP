package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.EngineWorkflowprocessecarule;

/**
 * Home object for domain model class Workflowprocessecarule.
 * @see cn.edu.sjtu.iasdsp.model.EngineWorkflowprocessecarule
 * @author Hibernate Tools
 */
@Stateless
public class WorkflowprocessecaruleHome {

	private static final Log log = LogFactory.getLog(WorkflowprocessecaruleHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(EngineWorkflowprocessecarule transientInstance) {
		log.debug("persisting Workflowprocessecarule instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(EngineWorkflowprocessecarule persistentInstance) {
		log.debug("removing Workflowprocessecarule instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public EngineWorkflowprocessecarule merge(EngineWorkflowprocessecarule detachedInstance) {
		log.debug("merging Workflowprocessecarule instance");
		try {
			EngineWorkflowprocessecarule result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineWorkflowprocessecarule findById(Integer id) {
		log.debug("getting Workflowprocessecarule instance with id: " + id);
		try {
			EngineWorkflowprocessecarule instance = entityManager.find(EngineWorkflowprocessecarule.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
