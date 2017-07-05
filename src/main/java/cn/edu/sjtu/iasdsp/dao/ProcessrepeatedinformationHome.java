package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.Processrepeatedinformation;

/**
 * Home object for domain model class Processrepeatedinformation.
 * @see cn.edu.sjtu.iasdsp.model.Processrepeatedinformation
 * @author Hibernate Tools
 */
@Stateless
public class ProcessrepeatedinformationHome {

	private static final Log log = LogFactory.getLog(ProcessrepeatedinformationHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(Processrepeatedinformation transientInstance) {
		log.debug("persisting Processrepeatedinformation instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(Processrepeatedinformation persistentInstance) {
		log.debug("removing Processrepeatedinformation instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public Processrepeatedinformation merge(Processrepeatedinformation detachedInstance) {
		log.debug("merging Processrepeatedinformation instance");
		try {
			Processrepeatedinformation result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Processrepeatedinformation findById(Integer id) {
		log.debug("getting Processrepeatedinformation instance with id: " + id);
		try {
			Processrepeatedinformation instance = entityManager.find(Processrepeatedinformation.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
