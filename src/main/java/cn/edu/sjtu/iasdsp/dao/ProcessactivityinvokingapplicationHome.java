package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.Processactivityinvokingapplication;

/**
 * Home object for domain model class Processactivityinvokingapplication.
 * @see cn.edu.sjtu.iasdsp.model.Processactivityinvokingapplication
 * @author Hibernate Tools
 */
@Stateless
public class ProcessactivityinvokingapplicationHome {

	private static final Log log = LogFactory.getLog(ProcessactivityinvokingapplicationHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(Processactivityinvokingapplication transientInstance) {
		log.debug("persisting Processactivityinvokingapplication instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(Processactivityinvokingapplication persistentInstance) {
		log.debug("removing Processactivityinvokingapplication instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public Processactivityinvokingapplication merge(Processactivityinvokingapplication detachedInstance) {
		log.debug("merging Processactivityinvokingapplication instance");
		try {
			Processactivityinvokingapplication result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Processactivityinvokingapplication findById(Integer id) {
		log.debug("getting Processactivityinvokingapplication instance with id: " + id);
		try {
			Processactivityinvokingapplication instance = entityManager.find(Processactivityinvokingapplication.class,
					id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}