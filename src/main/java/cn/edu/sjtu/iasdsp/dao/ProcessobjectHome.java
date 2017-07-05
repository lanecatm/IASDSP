package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.Processobject;

/**
 * Home object for domain model class Processobject.
 * @see cn.edu.sjtu.iasdsp.model.Processobject
 * @author Hibernate Tools
 */
@Stateless
public class ProcessobjectHome {

	private static final Log log = LogFactory.getLog(ProcessobjectHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(Processobject transientInstance) {
		log.debug("persisting Processobject instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(Processobject persistentInstance) {
		log.debug("removing Processobject instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public Processobject merge(Processobject detachedInstance) {
		log.debug("merging Processobject instance");
		try {
			Processobject result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Processobject findById(Integer id) {
		log.debug("getting Processobject instance with id: " + id);
		try {
			Processobject instance = entityManager.find(Processobject.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
