package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.EngineJavaclassmethod;

/**
 * Home object for domain model class Javaclassmethod.
 * @see cn.edu.sjtu.iasdsp.model.EngineJavaclassmethod
 * @author Hibernate Tools
 */
@Stateless
public class JavaclassmethodHome {

	private static final Log log = LogFactory.getLog(JavaclassmethodHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(EngineJavaclassmethod transientInstance) {
		log.debug("persisting Javaclassmethod instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(EngineJavaclassmethod persistentInstance) {
		log.debug("removing Javaclassmethod instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public EngineJavaclassmethod merge(EngineJavaclassmethod detachedInstance) {
		log.debug("merging Javaclassmethod instance");
		try {
			EngineJavaclassmethod result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public EngineJavaclassmethod findById(Integer id) {
		log.debug("getting Javaclassmethod instance with id: " + id);
		try {
			EngineJavaclassmethod instance = entityManager.find(EngineJavaclassmethod.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
