package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.DownloadFile;

/**
 * Home object for domain model class DownloadFiles.
 * @see cn.edu.sjtu.iasdsp.model.DownloadFile
 * @author Hibernate Tools
 */
@Stateless
public class DownloadFilesHome {

	private static final Log log = LogFactory.getLog(DownloadFilesHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(DownloadFile transientInstance) {
		log.debug("persisting DownloadFiles instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(DownloadFile persistentInstance) {
		log.debug("removing DownloadFiles instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public DownloadFile merge(DownloadFile detachedInstance) {
		log.debug("merging DownloadFiles instance");
		try {
			DownloadFile result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public DownloadFile findById(Integer id) {
		log.debug("getting DownloadFiles instance with id: " + id);
		try {
			DownloadFile instance = entityManager.find(DownloadFile.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}