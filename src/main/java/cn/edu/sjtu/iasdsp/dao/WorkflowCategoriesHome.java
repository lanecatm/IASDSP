package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.WorkflowCategory;

/**
 * Home object for domain model class WorkflowCategories.
 * @see cn.edu.sjtu.iasdsp.model.WorkflowCategory
 * @author Hibernate Tools
 */
@Stateless
public class WorkflowCategoriesHome {

	private static final Log log = LogFactory.getLog(WorkflowCategoriesHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(WorkflowCategory transientInstance) {
		log.debug("persisting WorkflowCategories instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(WorkflowCategory persistentInstance) {
		log.debug("removing WorkflowCategories instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public WorkflowCategory merge(WorkflowCategory detachedInstance) {
		log.debug("merging WorkflowCategories instance");
		try {
			WorkflowCategory result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public WorkflowCategory findById(Integer id) {
		log.debug("getting WorkflowCategories instance with id: " + id);
		try {
			WorkflowCategory instance = entityManager.find(WorkflowCategory.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
