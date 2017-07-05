package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.DepartmentInformation;

/**
 * Home object for domain model class DepartmentInformations.
 * @see cn.edu.sjtu.iasdsp.model.DepartmentInformation
 * @author Hibernate Tools
 */
@Stateless
public class DepartmentInformationsHome {

	private static final Log log = LogFactory.getLog(DepartmentInformationsHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(DepartmentInformation transientInstance) {
		log.debug("persisting DepartmentInformations instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(DepartmentInformation persistentInstance) {
		log.debug("removing DepartmentInformations instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public DepartmentInformation merge(DepartmentInformation detachedInstance) {
		log.debug("merging DepartmentInformations instance");
		try {
			DepartmentInformation result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public DepartmentInformation findById(Integer id) {
		log.debug("getting DepartmentInformations instance with id: " + id);
		try {
			DepartmentInformation instance = entityManager.find(DepartmentInformation.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
