package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.Javaclassmethod;

/**
 * Home object for domain model class Javaclassmethod.
 * @see cn.edu.sjtu.iasdsp.model.Javaclassmethod
 * @author Hibernate Tools
 */
@Stateless
public class JavaclassmethodHome {

	private static final Log log = LogFactory.getLog(JavaclassmethodHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(Javaclassmethod transientInstance) {
		log.debug("persisting Javaclassmethod instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(Javaclassmethod persistentInstance) {
		log.debug("removing Javaclassmethod instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public Javaclassmethod merge(Javaclassmethod detachedInstance) {
		log.debug("merging Javaclassmethod instance");
		try {
			Javaclassmethod result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Javaclassmethod findById(Integer id) {
		log.debug("getting Javaclassmethod instance with id: " + id);
		try {
			Javaclassmethod instance = entityManager.find(Javaclassmethod.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
