package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.Processcondition;

/**
 * Home object for domain model class Processcondition.
 * @see cn.edu.sjtu.iasdsp.model.Processcondition
 * @author Hibernate Tools
 */
@Stateless
public class ProcessconditionHome {

	private static final Log log = LogFactory.getLog(ProcessconditionHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(Processcondition transientInstance) {
		log.debug("persisting Processcondition instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(Processcondition persistentInstance) {
		log.debug("removing Processcondition instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public Processcondition merge(Processcondition detachedInstance) {
		log.debug("merging Processcondition instance");
		try {
			Processcondition result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Processcondition findById(Integer id) {
		log.debug("getting Processcondition instance with id: " + id);
		try {
			Processcondition instance = entityManager.find(Processcondition.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
