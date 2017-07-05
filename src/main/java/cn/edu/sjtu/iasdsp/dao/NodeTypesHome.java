package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.NodeType;

/**
 * Home object for domain model class NodeTypes.
 * @see cn.edu.sjtu.iasdsp.model.NodeType
 * @author Hibernate Tools
 */
@Stateless
public class NodeTypesHome {

	private static final Log log = LogFactory.getLog(NodeTypesHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(NodeType transientInstance) {
		log.debug("persisting NodeTypes instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(NodeType persistentInstance) {
		log.debug("removing NodeTypes instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public NodeType merge(NodeType detachedInstance) {
		log.debug("merging NodeTypes instance");
		try {
			NodeType result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public NodeType findById(Integer id) {
		log.debug("getting NodeTypes instance with id: " + id);
		try {
			NodeType instance = entityManager.find(NodeType.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
