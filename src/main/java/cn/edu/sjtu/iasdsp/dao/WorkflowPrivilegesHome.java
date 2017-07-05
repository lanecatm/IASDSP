package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.WorkflowPrivilege;

/**
 * Home object for domain model class WorkflowPrivileges.
 * @see cn.edu.sjtu.iasdsp.model.WorkflowPrivilege
 * @author Hibernate Tools
 */
@Stateless
public class WorkflowPrivilegesHome {

	private static final Log log = LogFactory.getLog(WorkflowPrivilegesHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(WorkflowPrivilege transientInstance) {
		log.debug("persisting WorkflowPrivileges instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(WorkflowPrivilege persistentInstance) {
		log.debug("removing WorkflowPrivileges instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public WorkflowPrivilege merge(WorkflowPrivilege detachedInstance) {
		log.debug("merging WorkflowPrivileges instance");
		try {
			WorkflowPrivilege result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public WorkflowPrivilege findById(Integer id) {
		log.debug("getting WorkflowPrivileges instance with id: " + id);
		try {
			WorkflowPrivilege instance = entityManager.find(WorkflowPrivilege.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
