package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.Processcontrolflowcondition;

/**
 * Home object for domain model class Processcontrolflowcondition.
 * @see cn.edu.sjtu.iasdsp.model.Processcontrolflowcondition
 * @author Hibernate Tools
 */
@Stateless
public class ProcesscontrolflowconditionHome {

	private static final Log log = LogFactory.getLog(ProcesscontrolflowconditionHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(Processcontrolflowcondition transientInstance) {
		log.debug("persisting Processcontrolflowcondition instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(Processcontrolflowcondition persistentInstance) {
		log.debug("removing Processcontrolflowcondition instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public Processcontrolflowcondition merge(Processcontrolflowcondition detachedInstance) {
		log.debug("merging Processcontrolflowcondition instance");
		try {
			Processcontrolflowcondition result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Processcontrolflowcondition findById(Integer id) {
		log.debug("getting Processcontrolflowcondition instance with id: " + id);
		try {
			Processcontrolflowcondition instance = entityManager.find(Processcontrolflowcondition.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
