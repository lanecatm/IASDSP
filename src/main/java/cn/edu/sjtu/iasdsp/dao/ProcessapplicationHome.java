package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.Processapplication;

/**
 * Home object for domain model class Processapplication.
 * @see cn.edu.sjtu.iasdsp.model.Processapplication
 * @author Hibernate Tools
 */
@Stateless
public class ProcessapplicationHome {

	private static final Log log = LogFactory.getLog(ProcessapplicationHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(Processapplication transientInstance) {
		log.debug("persisting Processapplication instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(Processapplication persistentInstance) {
		log.debug("removing Processapplication instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public Processapplication merge(Processapplication detachedInstance) {
		log.debug("merging Processapplication instance");
		try {
			Processapplication result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Processapplication findById(Integer id) {
		log.debug("getting Processapplication instance with id: " + id);
		try {
			Processapplication instance = entityManager.find(Processapplication.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
