package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.Workflowcontrolflowcondition;

/**
 * Home object for domain model class Workflowcontrolflowcondition.
 * @see cn.edu.sjtu.iasdsp.model.Workflowcontrolflowcondition
 * @author Hibernate Tools
 */
@Stateless
public class WorkflowcontrolflowconditionHome {

	private static final Log log = LogFactory.getLog(WorkflowcontrolflowconditionHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(Workflowcontrolflowcondition transientInstance) {
		log.debug("persisting Workflowcontrolflowcondition instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(Workflowcontrolflowcondition persistentInstance) {
		log.debug("removing Workflowcontrolflowcondition instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public Workflowcontrolflowcondition merge(Workflowcontrolflowcondition detachedInstance) {
		log.debug("merging Workflowcontrolflowcondition instance");
		try {
			Workflowcontrolflowcondition result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Workflowcontrolflowcondition findById(Integer id) {
		log.debug("getting Workflowcontrolflowcondition instance with id: " + id);
		try {
			Workflowcontrolflowcondition instance = entityManager.find(Workflowcontrolflowcondition.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
