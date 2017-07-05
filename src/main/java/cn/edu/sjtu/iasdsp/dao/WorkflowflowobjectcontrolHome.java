package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.Workflowflowobjectcontrol;

/**
 * Home object for domain model class Workflowflowobjectcontrol.
 * @see cn.edu.sjtu.iasdsp.model.Workflowflowobjectcontrol
 * @author Hibernate Tools
 */
@Stateless
public class WorkflowflowobjectcontrolHome {

	private static final Log log = LogFactory.getLog(WorkflowflowobjectcontrolHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(Workflowflowobjectcontrol transientInstance) {
		log.debug("persisting Workflowflowobjectcontrol instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(Workflowflowobjectcontrol persistentInstance) {
		log.debug("removing Workflowflowobjectcontrol instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public Workflowflowobjectcontrol merge(Workflowflowobjectcontrol detachedInstance) {
		log.debug("merging Workflowflowobjectcontrol instance");
		try {
			Workflowflowobjectcontrol result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Workflowflowobjectcontrol findById(Integer id) {
		log.debug("getting Workflowflowobjectcontrol instance with id: " + id);
		try {
			Workflowflowobjectcontrol instance = entityManager.find(Workflowflowobjectcontrol.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}