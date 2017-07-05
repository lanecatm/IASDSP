package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.NodeOptionChoice;

/**
 * Home object for domain model class NodeOptionChoices.
 * @see cn.edu.sjtu.iasdsp.model.NodeOptionChoice
 * @author Hibernate Tools
 */
@Stateless
public class NodeOptionChoicesHome {

	private static final Log log = LogFactory.getLog(NodeOptionChoicesHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(NodeOptionChoice transientInstance) {
		log.debug("persisting NodeOptionChoices instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(NodeOptionChoice persistentInstance) {
		log.debug("removing NodeOptionChoices instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public NodeOptionChoice merge(NodeOptionChoice detachedInstance) {
		log.debug("merging NodeOptionChoices instance");
		try {
			NodeOptionChoice result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public NodeOptionChoice findById(Integer id) {
		log.debug("getting NodeOptionChoices instance with id: " + id);
		try {
			NodeOptionChoice instance = entityManager.find(NodeOptionChoice.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
