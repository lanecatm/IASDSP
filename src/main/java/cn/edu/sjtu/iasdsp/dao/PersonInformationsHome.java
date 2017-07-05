package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-5 20:36:17 by Hibernate Tools 5.2.3.Final

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sjtu.iasdsp.model.PersonInformation;

/**
 * Home object for domain model class PersonInformations.
 * @see cn.edu.sjtu.iasdsp.model.PersonInformation
 * @author Hibernate Tools
 */
@Stateless
public class PersonInformationsHome {

	private static final Log log = LogFactory.getLog(PersonInformationsHome.class);

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(PersonInformation transientInstance) {
		log.debug("persisting PersonInformations instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(PersonInformation persistentInstance) {
		log.debug("removing PersonInformations instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public PersonInformation merge(PersonInformation detachedInstance) {
		log.debug("merging PersonInformations instance");
		try {
			PersonInformation result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public PersonInformation findById(Integer id) {
		log.debug("getting PersonInformations instance with id: " + id);
		try {
			PersonInformation instance = entityManager.find(PersonInformation.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
