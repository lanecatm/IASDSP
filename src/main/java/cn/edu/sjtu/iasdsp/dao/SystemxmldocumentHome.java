package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.EngineSystemxmldocument;

/**
 * Home object for domain model class Systemxmldocument.
 * @see cn.edu.sjtu.iasdsp.model.EngineSystemxmldocument
 * @author Hibernate Tools
 */
@Stateless
public class SystemxmldocumentHome {

	private static final Log log = LogFactory.getLog(SystemxmldocumentHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(EngineSystemxmldocument transientInstance) {
		log.debug("persisting Systemxmldocument instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(EngineSystemxmldocument persistentInstance) {
		log.debug("removing Systemxmldocument instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public EngineSystemxmldocument merge(EngineSystemxmldocument detachedInstance) {
		log.debug("merging Systemxmldocument instance");
		try {
			EngineSystemxmldocument result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineSystemxmldocument findById(Integer id) {
		log.debug("getting Systemxmldocument instance with id: " + id);
		try {
			EngineSystemxmldocument instance = entityManager.find(EngineSystemxmldocument.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
