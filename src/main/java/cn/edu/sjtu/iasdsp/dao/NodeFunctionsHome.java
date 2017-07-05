package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.NodeFunction;

/**
 * Home object for domain model class NodeFunctions.
 * @see cn.edu.sjtu.iasdsp.model.NodeFunction
 * @author Hibernate Tools
 */
@Stateless
public class NodeFunctionsHome {

	private static final Log log = LogFactory.getLog(NodeFunctionsHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(NodeFunction transientInstance) {
		log.debug("persisting NodeFunctions instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(NodeFunction persistentInstance) {
		log.debug("removing NodeFunctions instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public NodeFunction merge(NodeFunction detachedInstance) {
		log.debug("merging NodeFunctions instance");
		try {
			NodeFunction result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public NodeFunction findById(Integer id) {
		log.debug("getting NodeFunctions instance with id: " + id);
		try {
			NodeFunction instance = entityManager.find(NodeFunction.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
