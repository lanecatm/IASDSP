package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.ProcessFiles;

/**
 * Home object for domain model class ProcessFiles.
 * @see cn.edu.sjtu.iasdsp.model.ProcessFiles
 * @author Hibernate Tools
 */
@Stateless
public class ProcessFilesHome {

	private static final Log log = LogFactory.getLog(ProcessFilesHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(ProcessFiles transientInstance) {
		log.debug("persisting ProcessFiles instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(ProcessFiles persistentInstance) {
		log.debug("removing ProcessFiles instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public ProcessFiles merge(ProcessFiles detachedInstance) {
		log.debug("merging ProcessFiles instance");
		try {
			ProcessFiles result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public ProcessFiles findById(Integer id) {
		log.debug("getting ProcessFiles instance with id: " + id);
		try {
			ProcessFiles instance = entityManager.find(ProcessFiles.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
