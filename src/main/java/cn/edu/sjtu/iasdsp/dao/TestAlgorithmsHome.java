package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.TestAlgorithm;

/**
 * Home object for domain model class TestAlgorithms.
 * @see cn.edu.sjtu.iasdsp.model.TestAlgorithm
 * @author Hibernate Tools
 */
@Stateless
public class TestAlgorithmsHome {

	private static final Log log = LogFactory.getLog(TestAlgorithmsHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(TestAlgorithm transientInstance) {
		log.debug("persisting TestAlgorithms instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(TestAlgorithm persistentInstance) {
		log.debug("removing TestAlgorithms instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public TestAlgorithm merge(TestAlgorithm detachedInstance) {
		log.debug("merging TestAlgorithms instance");
		try {
			TestAlgorithm result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public TestAlgorithm findById(Integer id) {
		log.debug("getting TestAlgorithms instance with id: " + id);
		try {
			TestAlgorithm instance = entityManager.find(TestAlgorithm.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
