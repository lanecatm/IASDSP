package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.ArffType;

/**
 * Home object for domain model class ArffTypes.
 * @see cn.edu.sjtu.iasdsp.model.ArffType
 * @author Hibernate Tools
 */
@Stateless
public class ArffTypesHome {

	private static final Log log = LogFactory.getLog(ArffTypesHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(ArffType transientInstance) {
		log.debug("persisting ArffTypes instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(ArffType persistentInstance) {
		log.debug("removing ArffTypes instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public ArffType merge(ArffType detachedInstance) {
		log.debug("merging ArffTypes instance");
		try {
			ArffType result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public ArffType findById(Integer id) {
		log.debug("getting ArffTypes instance with id: " + id);
		try {
			ArffType instance = entityManager.find(ArffType.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
