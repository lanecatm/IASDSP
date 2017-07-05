package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.NodeOptionValue;

/**
 * Home object for domain model class NodeOptionValues.
 * @see cn.edu.sjtu.iasdsp.model.NodeOptionValue
 * @author Hibernate Tools
 */
@Stateless
public class NodeOptionValuesHome {

	private static final Log log = LogFactory.getLog(NodeOptionValuesHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(NodeOptionValue transientInstance) {
		log.debug("persisting NodeOptionValues instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(NodeOptionValue persistentInstance) {
		log.debug("removing NodeOptionValues instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public NodeOptionValue merge(NodeOptionValue detachedInstance) {
		log.debug("merging NodeOptionValues instance");
		try {
			NodeOptionValue result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public NodeOptionValue findById(Integer id) {
		log.debug("getting NodeOptionValues instance with id: " + id);
		try {
			NodeOptionValue instance = entityManager.find(NodeOptionValue.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
