package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.ProcessFiles;

/**
 * Home object for domain model class ProcessFiles.
 * @see cn.edu.sjtu.iasdsp.dao.ProcessFiles
 * @author Hibernate Tools
 */
public class ProcessFileHome {

	private static final Log log = LogFactory.getLog(ProcessFileHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(ProcessFiles transientInstance) {
		log.debug("persisting ProcessFiles instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(ProcessFiles instance) {
		log.debug("attaching dirty ProcessFiles instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(ProcessFiles instance) {
		log.debug("attaching clean ProcessFiles instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(ProcessFiles persistentInstance) {
		log.debug("deleting ProcessFiles instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public ProcessFiles merge(ProcessFiles detachedInstance) {
		log.debug("merging ProcessFiles instance");
		try {
			ProcessFiles result = (ProcessFiles) sessionFactory.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public ProcessFiles findById(java.lang.Integer id) {
		log.debug("getting ProcessFiles instance with id: " + id);
		try {
			ProcessFiles instance = (ProcessFiles) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.ProcessFiles", id);
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

	public List<ProcessFiles> findByExample(ProcessFiles instance) {
		log.debug("finding ProcessFiles instance by example");
		try {
			List<ProcessFiles> results = (List<ProcessFiles>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.dao.ProcessFiles").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
