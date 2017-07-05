package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.Processactivityinformation;

/**
 * Home object for domain model class Processactivityinformation.
 * @see cn.edu.sjtu.iasdsp.model.Processactivityinformation
 * @author Hibernate Tools
 */
@Stateless
public class ProcessactivityinformationHome {

	private static final Log log = LogFactory.getLog(ProcessactivityinformationHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(Processactivityinformation transientInstance) {
		log.debug("persisting Processactivityinformation instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(Processactivityinformation persistentInstance) {
		log.debug("removing Processactivityinformation instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public Processactivityinformation merge(Processactivityinformation detachedInstance) {
		log.debug("merging Processactivityinformation instance");
		try {
			Processactivityinformation result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Processactivityinformation findById(Integer id) {
		log.debug("getting Processactivityinformation instance with id: " + id);
		try {
			Processactivityinformation instance = entityManager.find(Processactivityinformation.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
