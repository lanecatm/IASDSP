package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.WikiRelationship;

/**
 * Home object for domain model class WikiRelationships.
 * @see cn.edu.sjtu.iasdsp.model.WikiRelationship
 * @author Hibernate Tools
 */
@Stateless
public class WikiRelationshipsHome {

	private static final Log log = LogFactory.getLog(WikiRelationshipsHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(WikiRelationship transientInstance) {
		log.debug("persisting WikiRelationships instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(WikiRelationship persistentInstance) {
		log.debug("removing WikiRelationships instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public WikiRelationship merge(WikiRelationship detachedInstance) {
		log.debug("merging WikiRelationships instance");
		try {
			WikiRelationship result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public WikiRelationship findById(Integer id) {
		log.debug("getting WikiRelationships instance with id: " + id);
		try {
			WikiRelationship instance = entityManager.find(WikiRelationship.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
