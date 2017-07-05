package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.Processflowobject;

/**
 * Home object for domain model class Processflowobjects.
 * @see cn.edu.sjtu.iasdsp.model.Processflowobject
 * @author Hibernate Tools
 */
@Stateless
public class ProcessflowobjectsHome {

	private static final Log log = LogFactory.getLog(ProcessflowobjectsHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(Processflowobject transientInstance) {
		log.debug("persisting Processflowobjects instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(Processflowobject persistentInstance) {
		log.debug("removing Processflowobjects instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public Processflowobject merge(Processflowobject detachedInstance) {
		log.debug("merging Processflowobjects instance");
		try {
			Processflowobject result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Processflowobject findById(Integer id) {
		log.debug("getting Processflowobjects instance with id: " + id);
		try {
			Processflowobject instance = entityManager.find(Processflowobject.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
