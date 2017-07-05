package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.Workflowactivityinformation;

/**
 * Home object for domain model class Workflowactivityinformation.
 * @see cn.edu.sjtu.iasdsp.model.Workflowactivityinformation
 * @author Hibernate Tools
 */
@Stateless
public class WorkflowactivityinformationHome {

	private static final Log log = LogFactory.getLog(WorkflowactivityinformationHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(Workflowactivityinformation transientInstance) {
		log.debug("persisting Workflowactivityinformation instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(Workflowactivityinformation persistentInstance) {
		log.debug("removing Workflowactivityinformation instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public Workflowactivityinformation merge(Workflowactivityinformation detachedInstance) {
		log.debug("merging Workflowactivityinformation instance");
		try {
			Workflowactivityinformation result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Workflowactivityinformation findById(Integer id) {
		log.debug("getting Workflowactivityinformation instance with id: " + id);
		try {
			Workflowactivityinformation instance = entityManager.find(Workflowactivityinformation.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
