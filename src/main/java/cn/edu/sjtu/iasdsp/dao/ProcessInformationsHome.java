package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.ProcessInformations;

/**
 * Home object for domain model class ProcessInformations.
 * @see cn.edu.sjtu.iasdsp.dao.ProcessInformations
 * @author Hibernate Tools
 */
public class ProcessInformationsHome {

	private static final Log log = LogFactory.getLog(ProcessInformationsHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(ProcessInformations transientInstance) {
		log.debug("persisting ProcessInformations instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(ProcessInformations instance) {
		log.debug("attaching dirty ProcessInformations instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(ProcessInformations instance) {
		log.debug("attaching clean ProcessInformations instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(ProcessInformations persistentInstance) {
		log.debug("deleting ProcessInformations instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public ProcessInformations merge(ProcessInformations detachedInstance) {
		log.debug("merging ProcessInformations instance");
		try {
			ProcessInformations result = (ProcessInformations) sessionFactory.getCurrentSession()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public ProcessInformations findById(java.lang.Integer id) {
		log.debug("getting ProcessInformations instance with id: " + id);
		try {
			ProcessInformations instance = (ProcessInformations) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.ProcessInformations", id);
			if (instance == null) {
				log.debug("get successful, no instance found");
			} else {
				log.debug("get successful, instance found");
			}
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<ProcessInformations> findByExample(ProcessInformations instance) {
		log.debug("finding ProcessInformations instance by example");
		try {
			List<ProcessInformations> results = (List<ProcessInformations>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.dao.ProcessInformations").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
