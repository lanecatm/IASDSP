package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.NodeCategory;

/**
 * Home object for domain model class NodeCategories.
 * @see cn.edu.sjtu.iasdsp.model.NodeCategory
 * @author Hibernate Tools
 */
@Stateless
public class NodeCategoriesHome {

	private static final Log log = LogFactory.getLog(NodeCategoriesHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(NodeCategory transientInstance) {
		log.debug("persisting NodeCategories instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(NodeCategory persistentInstance) {
		log.debug("removing NodeCategories instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public NodeCategory merge(NodeCategory detachedInstance) {
		log.debug("merging NodeCategories instance");
		try {
			NodeCategory result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public NodeCategory findById(Integer id) {
		log.debug("getting NodeCategories instance with id: " + id);
		try {
			NodeCategory instance = entityManager.find(NodeCategory.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}