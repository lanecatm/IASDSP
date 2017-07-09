package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.DownloadFile;

/**
 * Home object for domain model class DownloadFile.
 * @see cn.edu.sjtu.iasdsp.dao.DownloadFile
 * @author Hibernate Tools
 */
public class DownloadFileHome {

	private static final Log log = LogFactory.getLog(DownloadFileHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(DownloadFile transientInstance) {
		log.debug("persisting DownloadFile instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(DownloadFile instance) {
		log.debug("attaching dirty DownloadFile instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(DownloadFile instance) {
		log.debug("attaching clean DownloadFile instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(DownloadFile persistentInstance) {
		log.debug("deleting DownloadFile instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public DownloadFile merge(DownloadFile detachedInstance) {
		log.debug("merging DownloadFile instance");
		try {
			DownloadFile result = (DownloadFile) sessionFactory.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public DownloadFile findById(java.lang.Integer id) {
		log.debug("getting DownloadFile instance with id: " + id);
		try {
			DownloadFile instance = (DownloadFile) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.DownloadFile", id);
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

	public List<DownloadFile> findByExample(DownloadFile instance) {
		log.debug("finding DownloadFile instance by example");
		try {
			List<DownloadFile> results = (List<DownloadFile>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.dao.DownloadFile").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
