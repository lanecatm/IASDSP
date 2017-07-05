package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.EngineWorkflowactivityinputmapping;

/**
 * Home object for domain model class Workflowactivityinputmapping.
 * @see cn.edu.sjtu.iasdsp.model.EngineWorkflowactivityinputmapping
 * @author Hibernate Tools
 */
@Stateless
public class WorkflowactivityinputmappingHome {

	private static final Log log = LogFactory.getLog(WorkflowactivityinputmappingHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(EngineWorkflowactivityinputmapping transientInstance) {
		log.debug("persisting Workflowactivityinputmapping instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(EngineWorkflowactivityinputmapping persistentInstance) {
		log.debug("removing Workflowactivityinputmapping instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public EngineWorkflowactivityinputmapping merge(EngineWorkflowactivityinputmapping detachedInstance) {
		log.debug("merging Workflowactivityinputmapping instance");
		try {
			EngineWorkflowactivityinputmapping result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineWorkflowactivityinputmapping findById(Integer id) {
		log.debug("getting Workflowactivityinputmapping instance with id: " + id);
		try {
			EngineWorkflowactivityinputmapping instance = entityManager.find(EngineWorkflowactivityinputmapping.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
