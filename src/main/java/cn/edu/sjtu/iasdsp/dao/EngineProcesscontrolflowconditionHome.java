package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.EngineProcesscontrolflowcondition;

/**
 * Home object for domain model class Processcontrolflowcondition.
 * @see cn.edu.sjtu.iasdsp.model.EngineProcesscontrolflowcondition
 * @author Hibernate Tools
 */
@Stateless
public class EngineProcesscontrolflowconditionHome {

	private static final Log log = LogFactory.getLog(EngineProcesscontrolflowconditionHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(EngineProcesscontrolflowcondition transientInstance) {
		log.debug("persisting Processcontrolflowcondition instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(EngineProcesscontrolflowcondition persistentInstance) {
		log.debug("removing Processcontrolflowcondition instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public EngineProcesscontrolflowcondition merge(EngineProcesscontrolflowcondition detachedInstance) {
		log.debug("merging Processcontrolflowcondition instance");
		try {
			EngineProcesscontrolflowcondition result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineProcesscontrolflowcondition findById(Integer id) {
		log.debug("getting Processcontrolflowcondition instance with id: " + id);
		try {
			EngineProcesscontrolflowcondition instance = entityManager.find(EngineProcesscontrolflowcondition.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
