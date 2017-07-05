package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.Workflowactivityinputmapping;

/**
 * Home object for domain model class Workflowactivityinputmapping.
 * @see cn.edu.sjtu.iasdsp.model.Workflowactivityinputmapping
 * @author Hibernate Tools
 */
@Stateless
public class WorkflowactivityinputmappingHome {

	private static final Log log = LogFactory.getLog(WorkflowactivityinputmappingHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(Workflowactivityinputmapping transientInstance) {
		log.debug("persisting Workflowactivityinputmapping instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(Workflowactivityinputmapping persistentInstance) {
		log.debug("removing Workflowactivityinputmapping instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public Workflowactivityinputmapping merge(Workflowactivityinputmapping detachedInstance) {
		log.debug("merging Workflowactivityinputmapping instance");
		try {
			Workflowactivityinputmapping result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Workflowactivityinputmapping findById(Integer id) {
		log.debug("getting Workflowactivityinputmapping instance with id: " + id);
		try {
			Workflowactivityinputmapping instance = entityManager.find(Workflowactivityinputmapping.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
