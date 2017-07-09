package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.SharedProcessPrivilege;

/**
 * Home object for domain model class SharedProcessPrivilege.
 * @see cn.edu.sjtu.iasdsp.dao.SharedProcessPrivilege
 * @author Hibernate Tools
 */
public class SharedProcessPrivilegeHome {

	private static final Log log = LogFactory.getLog(SharedProcessPrivilegeHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(SharedProcessPrivilege transientInstance) {
		log.debug("persisting SharedProcessPrivilege instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(SharedProcessPrivilege instance) {
		log.debug("attaching dirty SharedProcessPrivilege instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(SharedProcessPrivilege instance) {
		log.debug("attaching clean SharedProcessPrivilege instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(SharedProcessPrivilege persistentInstance) {
		log.debug("deleting SharedProcessPrivilege instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public SharedProcessPrivilege merge(SharedProcessPrivilege detachedInstance) {
		log.debug("merging SharedProcessPrivilege instance");
		try {
			SharedProcessPrivilege result = (SharedProcessPrivilege) sessionFactory.getCurrentSession()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public SharedProcessPrivilege findById(java.lang.Integer id) {
		log.debug("getting SharedProcessPrivilege instance with id: " + id);
		try {
			SharedProcessPrivilege instance = (SharedProcessPrivilege) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.SharedProcessPrivilege", id);
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

	public List<SharedProcessPrivilege> findByExample(SharedProcessPrivilege instance) {
		log.debug("finding SharedProcessPrivilege instance by example");
		try {
			List<SharedProcessPrivilege> results = (List<SharedProcessPrivilege>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.dao.SharedProcessPrivilege").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
