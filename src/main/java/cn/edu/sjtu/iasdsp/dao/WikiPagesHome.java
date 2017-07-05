package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.WikiPage;

/**
 * Home object for domain model class WikiPages.
 * @see cn.edu.sjtu.iasdsp.model.WikiPage
 * @author Hibernate Tools
 */
@Stateless
public class WikiPagesHome {

	private static final Log log = LogFactory.getLog(WikiPagesHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(WikiPage transientInstance) {
		log.debug("persisting WikiPages instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(WikiPage persistentInstance) {
		log.debug("removing WikiPages instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public WikiPage merge(WikiPage detachedInstance) {
		log.debug("merging WikiPages instance");
		try {
			WikiPage result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public WikiPage findById(Integer id) {
		log.debug("getting WikiPages instance with id: " + id);
		try {
			WikiPage instance = entityManager.find(WikiPage.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
