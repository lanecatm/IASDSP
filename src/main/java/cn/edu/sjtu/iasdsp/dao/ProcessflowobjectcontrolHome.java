package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.EngineProcessflowobjectcontrol;

/**
 * Home object for domain model class Processflowobjectcontrol.
 * @see cn.edu.sjtu.iasdsp.model.EngineProcessflowobjectcontrol
 * @author Hibernate Tools
 */
@Stateless
public class ProcessflowobjectcontrolHome {

	private static final Log log = LogFactory.getLog(ProcessflowobjectcontrolHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(EngineProcessflowobjectcontrol transientInstance) {
		log.debug("persisting Processflowobjectcontrol instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(EngineProcessflowobjectcontrol persistentInstance) {
		log.debug("removing Processflowobjectcontrol instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public EngineProcessflowobjectcontrol merge(EngineProcessflowobjectcontrol detachedInstance) {
		log.debug("merging Processflowobjectcontrol instance");
		try {
			EngineProcessflowobjectcontrol result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineProcessflowobjectcontrol findById(Integer id) {
		log.debug("getting Processflowobjectcontrol instance with id: " + id);
		try {
			EngineProcessflowobjectcontrol instance = entityManager.find(EngineProcessflowobjectcontrol.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
