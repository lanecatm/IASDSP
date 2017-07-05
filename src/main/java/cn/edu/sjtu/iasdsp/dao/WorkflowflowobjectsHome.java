package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.Workflowflowobjects;

/**
 * Home object for domain model class Workflowflowobjects.
 * @see cn.edu.sjtu.iasdsp.model.Workflowflowobjects
 * @author Hibernate Tools
 */
@Stateless
public class WorkflowflowobjectsHome {

	private static final Log log = LogFactory.getLog(WorkflowflowobjectsHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(Workflowflowobjects transientInstance) {
		log.debug("persisting Workflowflowobjects instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(Workflowflowobjects persistentInstance) {
		log.debug("removing Workflowflowobjects instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public Workflowflowobjects merge(Workflowflowobjects detachedInstance) {
		log.debug("merging Workflowflowobjects instance");
		try {
			Workflowflowobjects result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Workflowflowobjects findById(Integer id) {
		log.debug("getting Workflowflowobjects instance with id: " + id);
		try {
			Workflowflowobjects instance = entityManager.find(Workflowflowobjects.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
