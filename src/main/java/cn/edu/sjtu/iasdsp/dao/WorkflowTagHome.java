package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.WorkflowTag;

/**
 * Home object for domain model class WorkflowTag.
 * @see cn.edu.sjtu.iasdsp.dao.WorkflowTag
 * @author Hibernate Tools
 */
public class WorkflowTagHome {

	private static final Log log = LogFactory.getLog(WorkflowTagHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(WorkflowTag transientInstance) {
		log.debug("persisting WorkflowTag instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(WorkflowTag instance) {
		log.debug("attaching dirty WorkflowTag instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(WorkflowTag instance) {
		log.debug("attaching clean WorkflowTag instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(WorkflowTag persistentInstance) {
		log.debug("deleting WorkflowTag instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public WorkflowTag merge(WorkflowTag detachedInstance) {
		log.debug("merging WorkflowTag instance");
		try {
			WorkflowTag result = (WorkflowTag) sessionFactory.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public WorkflowTag findById(java.lang.Integer id) {
		log.debug("getting WorkflowTag instance with id: " + id);
		try {
			WorkflowTag instance = (WorkflowTag) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.WorkflowTag", id);
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

	public List<WorkflowTag> findByExample(WorkflowTag instance) {
		log.debug("finding WorkflowTag instance by example");
		try {
			List<WorkflowTag> results = (List<WorkflowTag>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.dao.WorkflowTag").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
