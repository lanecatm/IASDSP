package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.WikiAndWorkflowInformation;

/**
 * Home object for domain model class WikiAndWorkflowInformations.
 * @see cn.edu.sjtu.iasdsp.model.WikiAndWorkflowInformation
 * @author Hibernate Tools
 */
@Stateless
public class WikiAndWorkflowInformationsHome {

	private static final Log log = LogFactory.getLog(WikiAndWorkflowInformationsHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(WikiAndWorkflowInformation transientInstance) {
		log.debug("persisting WikiAndWorkflowInformations instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(WikiAndWorkflowInformation persistentInstance) {
		log.debug("removing WikiAndWorkflowInformations instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public WikiAndWorkflowInformation merge(WikiAndWorkflowInformation detachedInstance) {
		log.debug("merging WikiAndWorkflowInformations instance");
		try {
			WikiAndWorkflowInformation result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public WikiAndWorkflowInformation findById(Integer id) {
		log.debug("getting WikiAndWorkflowInformations instance with id: " + id);
		try {
			WikiAndWorkflowInformation instance = entityManager.find(WikiAndWorkflowInformation.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
