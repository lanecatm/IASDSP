package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.NodeInformation;

/**
 * Home object for domain model class NodeInformations.
 * @see cn.edu.sjtu.iasdsp.model.NodeInformation
 * @author Hibernate Tools
 */
@Stateless
public class NodeInformationsHome {

	private static final Log log = LogFactory.getLog(NodeInformationsHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(NodeInformation transientInstance) {
		log.debug("persisting NodeInformations instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(NodeInformation persistentInstance) {
		log.debug("removing NodeInformations instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public NodeInformation merge(NodeInformation detachedInstance) {
		log.debug("merging NodeInformations instance");
		try {
			NodeInformation result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public NodeInformation findById(Integer id) {
		log.debug("getting NodeInformations instance with id: " + id);
		try {
			NodeInformation instance = entityManager.find(NodeInformation.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}