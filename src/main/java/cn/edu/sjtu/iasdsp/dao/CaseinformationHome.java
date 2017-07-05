package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.Caseinformation;

/**
 * Home object for domain model class Caseinformation.
 * @see cn.edu.sjtu.iasdsp.model.Caseinformation
 * @author Hibernate Tools
 */
@Stateless
public class CaseinformationHome {

	private static final Log log = LogFactory.getLog(CaseinformationHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(Caseinformation transientInstance) {
		log.debug("persisting Caseinformation instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(Caseinformation persistentInstance) {
		log.debug("removing Caseinformation instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public Caseinformation merge(Caseinformation detachedInstance) {
		log.debug("merging Caseinformation instance");
		try {
			Caseinformation result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Caseinformation findById(Integer id) {
		log.debug("getting Caseinformation instance with id: " + id);
		try {
			Caseinformation instance = entityManager.find(Caseinformation.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
