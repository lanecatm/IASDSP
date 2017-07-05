package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.Workflowevent;

/**
 * Home object for domain model class Workflowevent.
 * @see cn.edu.sjtu.iasdsp.model.Workflowevent
 * @author Hibernate Tools
 */
@Stateless
public class WorkfloweventHome {

	private static final Log log = LogFactory.getLog(WorkfloweventHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(Workflowevent transientInstance) {
		log.debug("persisting Workflowevent instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(Workflowevent persistentInstance) {
		log.debug("removing Workflowevent instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public Workflowevent merge(Workflowevent detachedInstance) {
		log.debug("merging Workflowevent instance");
		try {
			Workflowevent result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Workflowevent findById(Integer id) {
		log.debug("getting Workflowevent instance with id: " + id);
		try {
			Workflowevent instance = entityManager.find(Workflowevent.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
