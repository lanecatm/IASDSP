package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.WorkflowComment;

/**
 * Home object for domain model class WorkflowComment.
 * @see cn.edu.sjtu.iasdsp.dao.WorkflowComment
 * @author Hibernate Tools
 */
public class WorkflowCommentHome {

	private static final Log log = LogFactory.getLog(WorkflowCommentHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(WorkflowComment transientInstance) {
		log.debug("persisting WorkflowComment instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(WorkflowComment instance) {
		log.debug("attaching dirty WorkflowComment instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(WorkflowComment instance) {
		log.debug("attaching clean WorkflowComment instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(WorkflowComment persistentInstance) {
		log.debug("deleting WorkflowComment instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public WorkflowComment merge(WorkflowComment detachedInstance) {
		log.debug("merging WorkflowComment instance");
		try {
			WorkflowComment result = (WorkflowComment) sessionFactory.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public WorkflowComment findById(java.lang.Integer id) {
		log.debug("getting WorkflowComment instance with id: " + id);
		try {
			WorkflowComment instance = (WorkflowComment) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.WorkflowComment", id);
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

	public List<WorkflowComment> findByExample(WorkflowComment instance) {
		log.debug("finding WorkflowComment instance by example");
		try {
			List<WorkflowComment> results = (List<WorkflowComment>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.dao.WorkflowComment").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
