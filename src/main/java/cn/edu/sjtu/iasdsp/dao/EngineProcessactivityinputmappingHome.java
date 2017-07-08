package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.EngineProcessactivityinputmapping;

/**
 * Home object for domain model class Processactivityinputmapping.
 * @see cn.edu.sjtu.iasdsp.model.EngineProcessactivityinputmapping
 * @author Hibernate Tools
 */
@Stateless
public class EngineProcessactivityinputmappingHome {

	private static final Log log = LogFactory.getLog(EngineProcessactivityinputmappingHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(EngineProcessactivityinputmapping transientInstance) {
		log.debug("persisting Processactivityinputmapping instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(EngineProcessactivityinputmapping persistentInstance) {
		log.debug("removing Processactivityinputmapping instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public EngineProcessactivityinputmapping merge(EngineProcessactivityinputmapping detachedInstance) {
		log.debug("merging Processactivityinputmapping instance");
		try {
			EngineProcessactivityinputmapping result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineProcessactivityinputmapping findById(Integer id) {
		log.debug("getting Processactivityinputmapping instance with id: " + id);
		try {
			EngineProcessactivityinputmapping instance = entityManager.find(EngineProcessactivityinputmapping.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
