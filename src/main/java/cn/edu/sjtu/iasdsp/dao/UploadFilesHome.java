package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.UploadFiles;

/**
 * Home object for domain model class UploadFiles.
 * @see cn.edu.sjtu.iasdsp.dao.UploadFiles
 * @author Hibernate Tools
 */
public class UploadFilesHome {

	private static final Log log = LogFactory.getLog(UploadFilesHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(UploadFiles transientInstance) {
		log.debug("persisting UploadFiles instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(UploadFiles instance) {
		log.debug("attaching dirty UploadFiles instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(UploadFiles instance) {
		log.debug("attaching clean UploadFiles instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(UploadFiles persistentInstance) {
		log.debug("deleting UploadFiles instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public UploadFiles merge(UploadFiles detachedInstance) {
		log.debug("merging UploadFiles instance");
		try {
			UploadFiles result = (UploadFiles) sessionFactory.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public UploadFiles findById(java.lang.Integer id) {
		log.debug("getting UploadFiles instance with id: " + id);
		try {
			UploadFiles instance = (UploadFiles) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.UploadFiles", id);
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

	public List<UploadFiles> findByExample(UploadFiles instance) {
		log.debug("finding UploadFiles instance by example");
		try {
			List<UploadFiles> results = (List<UploadFiles>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.dao.UploadFiles").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
