package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.NodeOptionType;

/**
 * Home object for domain model class NodeOptionTypes.
 * @see cn.edu.sjtu.iasdsp.model.NodeOptionType
 * @author Hibernate Tools
 */
@Stateless
public class NodeOptionTypesHome {

	private static final Log log = LogFactory.getLog(NodeOptionTypesHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(NodeOptionType transientInstance) {
		log.debug("persisting NodeOptionTypes instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(NodeOptionType persistentInstance) {
		log.debug("removing NodeOptionTypes instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public NodeOptionType merge(NodeOptionType detachedInstance) {
		log.debug("merging NodeOptionTypes instance");
		try {
			NodeOptionType result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public NodeOptionType findById(Integer id) {
		log.debug("getting NodeOptionTypes instance with id: " + id);
		try {
			NodeOptionType instance = entityManager.find(NodeOptionType.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
