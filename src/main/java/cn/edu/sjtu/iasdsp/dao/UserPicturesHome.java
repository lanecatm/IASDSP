package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.UserPicture;

/**
 * Home object for domain model class UserPictures.
 * @see cn.edu.sjtu.iasdsp.model.UserPicture
 * @author Hibernate Tools
 */
@Stateless
public class UserPicturesHome {

	private static final Log log = LogFactory.getLog(UserPicturesHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(UserPicture transientInstance) {
		log.debug("persisting UserPictures instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(UserPicture persistentInstance) {
		log.debug("removing UserPictures instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public UserPicture merge(UserPicture detachedInstance) {
		log.debug("merging UserPictures instance");
		try {
			UserPicture result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public UserPicture findById(Integer id) {
		log.debug("getting UserPictures instance with id: " + id);
		try {
			UserPicture instance = entityManager.find(UserPicture.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
