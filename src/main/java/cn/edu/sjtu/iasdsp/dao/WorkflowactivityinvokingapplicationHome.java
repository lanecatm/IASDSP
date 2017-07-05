package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.Workflowactivityinvokingapplication;

/**
 * Home object for domain model class Workflowactivityinvokingapplication.
 * @see cn.edu.sjtu.iasdsp.model.Workflowactivityinvokingapplication
 * @author Hibernate Tools
 */
@Stateless
public class WorkflowactivityinvokingapplicationHome {

	private static final Log log = LogFactory.getLog(WorkflowactivityinvokingapplicationHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(Workflowactivityinvokingapplication transientInstance) {
		log.debug("persisting Workflowactivityinvokingapplication instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(Workflowactivityinvokingapplication persistentInstance) {
		log.debug("removing Workflowactivityinvokingapplication instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public Workflowactivityinvokingapplication merge(Workflowactivityinvokingapplication detachedInstance) {
		log.debug("merging Workflowactivityinvokingapplication instance");
		try {
			Workflowactivityinvokingapplication result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Workflowactivityinvokingapplication findById(Integer id) {
		log.debug("getting Workflowactivityinvokingapplication instance with id: " + id);
		try {
			Workflowactivityinvokingapplication instance = entityManager.find(Workflowactivityinvokingapplication.class,
					id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
