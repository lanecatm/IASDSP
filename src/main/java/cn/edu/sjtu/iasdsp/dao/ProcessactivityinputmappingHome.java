package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.Processactivityinputmapping;

/**
 * Home object for domain model class Processactivityinputmapping.
 * @see cn.edu.sjtu.iasdsp.model.Processactivityinputmapping
 * @author Hibernate Tools
 */
@Stateless
public class ProcessactivityinputmappingHome {

	private static final Log log = LogFactory.getLog(ProcessactivityinputmappingHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(Processactivityinputmapping transientInstance) {
		log.debug("persisting Processactivityinputmapping instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(Processactivityinputmapping persistentInstance) {
		log.debug("removing Processactivityinputmapping instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public Processactivityinputmapping merge(Processactivityinputmapping detachedInstance) {
		log.debug("merging Processactivityinputmapping instance");
		try {
			Processactivityinputmapping result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Processactivityinputmapping findById(Integer id) {
		log.debug("getting Processactivityinputmapping instance with id: " + id);
		try {
			Processactivityinputmapping instance = entityManager.find(Processactivityinputmapping.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
