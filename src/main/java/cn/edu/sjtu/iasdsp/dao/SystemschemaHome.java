package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.EngineSystemschema;

/**
 * Home object for domain model class Systemschema.
 * @see cn.edu.sjtu.iasdsp.model.EngineSystemschema
 * @author Hibernate Tools
 */
@Stateless
public class SystemschemaHome {

	private static final Log log = LogFactory.getLog(SystemschemaHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(EngineSystemschema transientInstance) {
		log.debug("persisting Systemschema instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(EngineSystemschema persistentInstance) {
		log.debug("removing Systemschema instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public EngineSystemschema merge(EngineSystemschema detachedInstance) {
		log.debug("merging Systemschema instance");
		try {
			EngineSystemschema result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineSystemschema findById(Integer id) {
		log.debug("getting Systemschema instance with id: " + id);
		try {
			EngineSystemschema instance = entityManager.find(EngineSystemschema.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
