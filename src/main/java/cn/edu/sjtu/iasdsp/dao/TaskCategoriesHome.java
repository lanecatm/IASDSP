package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.WikiCategory;

/**
 * Home object for domain model class TaskCategories.
 * @see cn.edu.sjtu.iasdsp.model.WikiCategory
 * @author Hibernate Tools
 */
@Stateless
public class TaskCategoriesHome {

	private static final Log log = LogFactory.getLog(TaskCategoriesHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(WikiCategory transientInstance) {
		log.debug("persisting TaskCategories instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(WikiCategory persistentInstance) {
		log.debug("removing TaskCategories instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public WikiCategory merge(WikiCategory detachedInstance) {
		log.debug("merging TaskCategories instance");
		try {
			WikiCategory result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public WikiCategory findById(Integer id) {
		log.debug("getting TaskCategories instance with id: " + id);
		try {
			WikiCategory instance = entityManager.find(WikiCategory.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
