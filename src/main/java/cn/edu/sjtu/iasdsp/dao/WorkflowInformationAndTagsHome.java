package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.WorkflowInformationAndTag;

/**
 * Home object for domain model class WorkflowInformationAndTags.
 * @see cn.edu.sjtu.iasdsp.model.WorkflowInformationAndTag
 * @author Hibernate Tools
 */
@Stateless
public class WorkflowInformationAndTagsHome {

	private static final Log log = LogFactory.getLog(WorkflowInformationAndTagsHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(WorkflowInformationAndTag transientInstance) {
		log.debug("persisting WorkflowInformationAndTags instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(WorkflowInformationAndTag persistentInstance) {
		log.debug("removing WorkflowInformationAndTags instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public WorkflowInformationAndTag merge(WorkflowInformationAndTag detachedInstance) {
		log.debug("merging WorkflowInformationAndTags instance");
		try {
			WorkflowInformationAndTag result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public WorkflowInformationAndTag findById(Integer id) {
		log.debug("getting WorkflowInformationAndTags instance with id: " + id);
		try {
			WorkflowInformationAndTag instance = entityManager.find(WorkflowInformationAndTag.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
