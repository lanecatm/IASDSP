package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.Systemxmldocument;

/**
 * Home object for domain model class Systemxmldocument.
 * @see cn.edu.sjtu.iasdsp.model.Systemxmldocument
 * @author Hibernate Tools
 */
@Stateless
public class SystemxmldocumentHome {

	private static final Log log = LogFactory.getLog(SystemxmldocumentHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(Systemxmldocument transientInstance) {
		log.debug("persisting Systemxmldocument instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(Systemxmldocument persistentInstance) {
		log.debug("removing Systemxmldocument instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public Systemxmldocument merge(Systemxmldocument detachedInstance) {
		log.debug("merging Systemxmldocument instance");
		try {
			Systemxmldocument result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Systemxmldocument findById(Integer id) {
		log.debug("getting Systemxmldocument instance with id: " + id);
		try {
			Systemxmldocument instance = entityManager.find(Systemxmldocument.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
