package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.WorkflowComment;

/**
 * Home object for domain model class WorkflowComments.
 * @see cn.edu.sjtu.iasdsp.model.WorkflowComment
 * @author Hibernate Tools
 */
@Stateless
public class WorkflowCommentsHome {

	private static final Log log = LogFactory.getLog(WorkflowCommentsHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(WorkflowComment transientInstance) {
		log.debug("persisting WorkflowComments instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(WorkflowComment persistentInstance) {
		log.debug("removing WorkflowComments instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public WorkflowComment merge(WorkflowComment detachedInstance) {
		log.debug("merging WorkflowComments instance");
		try {
			WorkflowComment result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public WorkflowComment findById(Integer id) {
		log.debug("getting WorkflowComments instance with id: " + id);
		try {
			WorkflowComment instance = entityManager.find(WorkflowComment.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
