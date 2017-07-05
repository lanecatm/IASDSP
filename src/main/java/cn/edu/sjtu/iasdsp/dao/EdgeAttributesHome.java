package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.EdgeAttribute;

/**
 * Home object for domain model class EdgeAttributes.
 * @see cn.edu.sjtu.iasdsp.model.EdgeAttribute
 * @author Hibernate Tools
 */
@Stateless
public class EdgeAttributesHome {

	private static final Log log = LogFactory.getLog(EdgeAttributesHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(EdgeAttribute transientInstance) {
		log.debug("persisting EdgeAttributes instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(EdgeAttribute persistentInstance) {
		log.debug("removing EdgeAttributes instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public EdgeAttribute merge(EdgeAttribute detachedInstance) {
		log.debug("merging EdgeAttributes instance");
		try {
			EdgeAttribute result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EdgeAttribute findById(Integer id) {
		log.debug("getting EdgeAttributes instance with id: " + id);
		try {
			EdgeAttribute instance = entityManager.find(EdgeAttribute.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
