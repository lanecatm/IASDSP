package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.WorkflowTag;

/**
 * Home object for domain model class WorkflowTags.
 * @see cn.edu.sjtu.iasdsp.model.WorkflowTag
 * @author Hibernate Tools
 */
@Stateless
public class WorkflowTagsHome {

	private static final Log log = LogFactory.getLog(WorkflowTagsHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(WorkflowTag transientInstance) {
		log.debug("persisting WorkflowTags instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(WorkflowTag persistentInstance) {
		log.debug("removing WorkflowTags instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public WorkflowTag merge(WorkflowTag detachedInstance) {
		log.debug("merging WorkflowTags instance");
		try {
			WorkflowTag result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public WorkflowTag findById(Integer id) {
		log.debug("getting WorkflowTags instance with id: " + id);
		try {
			WorkflowTag instance = entityManager.find(WorkflowTag.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
