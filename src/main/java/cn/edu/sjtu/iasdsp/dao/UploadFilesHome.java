package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.UploadFiles;

/**
 * Home object for domain model class UploadFiles.
 * @see cn.edu.sjtu.iasdsp.model.UploadFiles
 * @author Hibernate Tools
 */
@Stateless
public class UploadFilesHome {

	private static final Log log = LogFactory.getLog(UploadFilesHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(UploadFiles transientInstance) {
		log.debug("persisting UploadFiles instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(UploadFiles persistentInstance) {
		log.debug("removing UploadFiles instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public UploadFiles merge(UploadFiles detachedInstance) {
		log.debug("merging UploadFiles instance");
		try {
			UploadFiles result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public UploadFiles findById(Integer id) {
		log.debug("getting UploadFiles instance with id: " + id);
		try {
			UploadFiles instance = entityManager.find(UploadFiles.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
