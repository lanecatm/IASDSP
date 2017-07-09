package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.DepartmentInformation;

/**
 * Home object for domain model class DepartmentInformation.
 * @see cn.edu.sjtu.iasdsp.dao.DepartmentInformation
 * @author Hibernate Tools
 */
public class DepartmentInformationHome {

	private static final Log log = LogFactory.getLog(DepartmentInformationHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(DepartmentInformation transientInstance) {
		log.debug("persisting DepartmentInformation instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(DepartmentInformation instance) {
		log.debug("attaching dirty DepartmentInformation instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(DepartmentInformation instance) {
		log.debug("attaching clean DepartmentInformation instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(DepartmentInformation persistentInstance) {
		log.debug("deleting DepartmentInformation instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public DepartmentInformation merge(DepartmentInformation detachedInstance) {
		log.debug("merging DepartmentInformation instance");
		try {
			DepartmentInformation result = (DepartmentInformation) sessionFactory.getCurrentSession()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public DepartmentInformation findById(java.lang.Integer id) {
		log.debug("getting DepartmentInformation instance with id: " + id);
		try {
			DepartmentInformation instance = (DepartmentInformation) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.DepartmentInformation", id);
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

	public List<DepartmentInformation> findByExample(DepartmentInformation instance) {
		log.debug("finding DepartmentInformation instance by example");
		try {
			List<DepartmentInformation> results = (List<DepartmentInformation>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.dao.DepartmentInformation").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
