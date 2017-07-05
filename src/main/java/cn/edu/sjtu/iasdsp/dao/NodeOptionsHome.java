package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.NodeOption;

/**
 * Home object for domain model class NodeOptions.
 * @see cn.edu.sjtu.iasdsp.model.NodeOption
 * @author Hibernate Tools
 */
@Stateless
public class NodeOptionsHome {

	private static final Log log = LogFactory.getLog(NodeOptionsHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(NodeOption transientInstance) {
		log.debug("persisting NodeOptions instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(NodeOption persistentInstance) {
		log.debug("removing NodeOptions instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public NodeOption merge(NodeOption detachedInstance) {
		log.debug("merging NodeOptions instance");
		try {
			NodeOption result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public NodeOption findById(Integer id) {
		log.debug("getting NodeOptions instance with id: " + id);
		try {
			NodeOption instance = entityManager.find(NodeOption.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
