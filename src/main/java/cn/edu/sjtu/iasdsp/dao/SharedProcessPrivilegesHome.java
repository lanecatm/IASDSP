package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.SharedProcessPrivilege;

/**
 * Home object for domain model class SharedProcessPrivileges.
 * @see cn.edu.sjtu.iasdsp.model.SharedProcessPrivilege
 * @author Hibernate Tools
 */
@Stateless
public class SharedProcessPrivilegesHome {

	private static final Log log = LogFactory.getLog(SharedProcessPrivilegesHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(SharedProcessPrivilege transientInstance) {
		log.debug("persisting SharedProcessPrivileges instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(SharedProcessPrivilege persistentInstance) {
		log.debug("removing SharedProcessPrivileges instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public SharedProcessPrivilege merge(SharedProcessPrivilege detachedInstance) {
		log.debug("merging SharedProcessPrivileges instance");
		try {
			SharedProcessPrivilege result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public SharedProcessPrivilege findById(Integer id) {
		log.debug("getting SharedProcessPrivileges instance with id: " + id);
		try {
			SharedProcessPrivilege instance = entityManager.find(SharedProcessPrivilege.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
