package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.Packageinformation;

/**
 * Home object for domain model class Packageinformation.
 * @see cn.edu.sjtu.iasdsp.model.Packageinformation
 * @author Hibernate Tools
 */
@Stateless
public class PackageinformationHome {

	private static final Log log = LogFactory.getLog(PackageinformationHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(Packageinformation transientInstance) {
		log.debug("persisting Packageinformation instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(Packageinformation persistentInstance) {
		log.debug("removing Packageinformation instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public Packageinformation merge(Packageinformation detachedInstance) {
		log.debug("merging Packageinformation instance");
		try {
			Packageinformation result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Packageinformation findById(Integer id) {
		log.debug("getting Packageinformation instance with id: " + id);
		try {
			Packageinformation instance = entityManager.find(Packageinformation.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
