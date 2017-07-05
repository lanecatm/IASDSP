package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.Separators;

/**
 * Home object for domain model class Separators.
 * @see cn.edu.sjtu.iasdsp.model.Separators
 * @author Hibernate Tools
 */
@Stateless
public class SeparatorsHome {

	private static final Log log = LogFactory.getLog(SeparatorsHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(Separators transientInstance) {
		log.debug("persisting Separators instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(Separators persistentInstance) {
		log.debug("removing Separators instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public Separators merge(Separators detachedInstance) {
		log.debug("merging Separators instance");
		try {
			Separators result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Separators findById(Integer id) {
		log.debug("getting Separators instance with id: " + id);
		try {
			Separators instance = entityManager.find(Separators.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
