package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.WikiReference;

/**
 * Home object for domain model class WikiReferences.
 * @see cn.edu.sjtu.iasdsp.model.WikiReference
 * @author Hibernate Tools
 */
@Stateless
public class WikiReferencesHome {

	private static final Log log = LogFactory.getLog(WikiReferencesHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(WikiReference transientInstance) {
		log.debug("persisting WikiReferences instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(WikiReference persistentInstance) {
		log.debug("removing WikiReferences instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public WikiReference merge(WikiReference detachedInstance) {
		log.debug("merging WikiReferences instance");
		try {
			WikiReference result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public WikiReference findById(Integer id) {
		log.debug("getting WikiReferences instance with id: " + id);
		try {
			WikiReference instance = entityManager.find(WikiReference.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
