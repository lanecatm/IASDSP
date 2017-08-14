package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.edu.sjtu.iasdsp.model.UserPicture;

/**
 * Home object for domain model class UserPicture.
 * @see cn.edu.sjtu.iasdsp.dao.UserPicture
 * @author Hibernate Tools
 */
@Repository
public class UserPictureHome {

	private static final Log log = LogFactory.getLog(UserPictureHome.class);

	@Autowired
	private  SessionFactory sessionFactory;

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(UserPicture transientInstance) {
		log.debug("persisting UserPicture instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(UserPicture instance) {
		log.debug("attaching dirty UserPicture instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(UserPicture instance) {
		log.debug("attaching clean UserPicture instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(UserPicture persistentInstance) {
		log.debug("deleting UserPicture instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public UserPicture merge(UserPicture detachedInstance) {
		log.debug("merging UserPicture instance");
		try {
			UserPicture result = (UserPicture) sessionFactory.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public UserPicture findById(java.lang.Integer id) {
		log.debug("getting UserPicture instance with id: " + id);
		try {
			UserPicture instance = (UserPicture) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.model.UserPicture", id);
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

	public List<UserPicture> findByExample(UserPicture instance) {
		log.debug("finding UserPicture instance by example");
		try {
			List<UserPicture> results = (List<UserPicture>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.model.UserPicture").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
