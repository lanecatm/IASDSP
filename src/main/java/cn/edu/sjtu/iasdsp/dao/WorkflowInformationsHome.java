package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.WorkflowInformation;

/**
 * Home object for domain model class WorkflowInformations.
 * @see cn.edu.sjtu.iasdsp.model.WorkflowInformation
 * @author Hibernate Tools
 */
@Stateless
public class WorkflowInformationsHome {

	private static final Log log = LogFactory.getLog(WorkflowInformationsHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(WorkflowInformation transientInstance) {
		log.debug("persisting WorkflowInformations instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(WorkflowInformation persistentInstance) {
		log.debug("removing WorkflowInformations instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public WorkflowInformation merge(WorkflowInformation detachedInstance) {
		log.debug("merging WorkflowInformations instance");
		try {
			WorkflowInformation result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public WorkflowInformation findById(Integer id) {
		log.debug("getting WorkflowInformations instance with id: " + id);
		try {
			WorkflowInformation instance = entityManager.find(WorkflowInformation.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
