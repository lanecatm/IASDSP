package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.EngineWorkflowactivityinformation;

/**
 * Home object for domain model class Workflowactivityinformation.
 * @see cn.edu.sjtu.iasdsp.model.EngineWorkflowactivityinformation
 * @author Hibernate Tools
 */
@Stateless
public class EngineWorkflowactivityinformationHome {

	private static final Log log = LogFactory.getLog(EngineWorkflowactivityinformationHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(EngineWorkflowactivityinformation transientInstance) {
		log.debug("persisting Workflowactivityinformation instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(EngineWorkflowactivityinformation persistentInstance) {
		log.debug("removing Workflowactivityinformation instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public EngineWorkflowactivityinformation merge(EngineWorkflowactivityinformation detachedInstance) {
		log.debug("merging Workflowactivityinformation instance");
		try {
			EngineWorkflowactivityinformation result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineWorkflowactivityinformation findById(Integer id) {
		log.debug("getting Workflowactivityinformation instance with id: " + id);
		try {
			EngineWorkflowactivityinformation instance = entityManager.find(EngineWorkflowactivityinformation.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
