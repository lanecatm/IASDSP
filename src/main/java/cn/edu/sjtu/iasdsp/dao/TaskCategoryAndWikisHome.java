package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.TaskCategoryAndWiki;

/**
 * Home object for domain model class TaskCategoryAndWikis.
 * @see cn.edu.sjtu.iasdsp.model.TaskCategoryAndWiki
 * @author Hibernate Tools
 */
@Stateless
public class TaskCategoryAndWikisHome {

	private static final Log log = LogFactory.getLog(TaskCategoryAndWikisHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(TaskCategoryAndWiki transientInstance) {
		log.debug("persisting TaskCategoryAndWikis instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(TaskCategoryAndWiki persistentInstance) {
		log.debug("removing TaskCategoryAndWikis instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public TaskCategoryAndWiki merge(TaskCategoryAndWiki detachedInstance) {
		log.debug("merging TaskCategoryAndWikis instance");
		try {
			TaskCategoryAndWiki result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public TaskCategoryAndWiki findById(Integer id) {
		log.debug("getting TaskCategoryAndWikis instance with id: " + id);
		try {
			TaskCategoryAndWiki instance = entityManager.find(TaskCategoryAndWiki.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
