package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.EngineProcessflowobject;

/**
 * Home object for domain model class Processflowobjects.
 * @see cn.edu.sjtu.iasdsp.model.EngineProcessflowobject
 * @author Hibernate Tools
 */
@Stateless
public class EngineProcessflowobjectsHome {

	private static final Log log = LogFactory.getLog(EngineProcessflowobjectsHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(EngineProcessflowobject transientInstance) {
		log.debug("persisting Processflowobjects instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(EngineProcessflowobject persistentInstance) {
		log.debug("removing Processflowobjects instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public EngineProcessflowobject merge(EngineProcessflowobject detachedInstance) {
		log.debug("merging Processflowobjects instance");
		try {
			EngineProcessflowobject result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineProcessflowobject findById(Integer id) {
		log.debug("getting Processflowobjects instance with id: " + id);
		try {
			EngineProcessflowobject instance = entityManager.find(EngineProcessflowobject.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
