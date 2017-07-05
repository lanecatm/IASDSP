package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.WikiPageVersion;

/**
 * Home object for domain model class WikiPageVersions.
 * @see cn.edu.sjtu.iasdsp.model.WikiPageVersion
 * @author Hibernate Tools
 */
@Stateless
public class WikiPageVersionsHome {

	private static final Log log = LogFactory.getLog(WikiPageVersionsHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(WikiPageVersion transientInstance) {
		log.debug("persisting WikiPageVersions instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(WikiPageVersion persistentInstance) {
		log.debug("removing WikiPageVersions instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public WikiPageVersion merge(WikiPageVersion detachedInstance) {
		log.debug("merging WikiPageVersions instance");
		try {
			WikiPageVersion result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public WikiPageVersion findById(Integer id) {
		log.debug("getting WikiPageVersions instance with id: " + id);
		try {
			WikiPageVersion instance = entityManager.find(WikiPageVersion.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
