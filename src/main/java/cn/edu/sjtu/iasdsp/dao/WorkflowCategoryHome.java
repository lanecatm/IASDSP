package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.WorkflowCategory;

/**
 * Home object for domain model class WorkflowCategory.
 * @see cn.edu.sjtu.iasdsp.dao.WorkflowCategory
 * @author Hibernate Tools
 */
public class WorkflowCategoryHome {

	private static final Log log = LogFactory.getLog(WorkflowCategoryHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(WorkflowCategory transientInstance) {
		log.debug("persisting WorkflowCategory instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(WorkflowCategory instance) {
		log.debug("attaching dirty WorkflowCategory instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(WorkflowCategory instance) {
		log.debug("attaching clean WorkflowCategory instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(WorkflowCategory persistentInstance) {
		log.debug("deleting WorkflowCategory instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public WorkflowCategory merge(WorkflowCategory detachedInstance) {
		log.debug("merging WorkflowCategory instance");
		try {
			WorkflowCategory result = (WorkflowCategory) sessionFactory.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public WorkflowCategory findById(java.lang.Integer id) {
		log.debug("getting WorkflowCategory instance with id: " + id);
		try {
			WorkflowCategory instance = (WorkflowCategory) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.WorkflowCategory", id);
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

	public List<WorkflowCategory> findByExample(WorkflowCategory instance) {
		log.debug("finding WorkflowCategory instance by example");
		try {
			List<WorkflowCategory> results = (List<WorkflowCategory>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.dao.WorkflowCategory").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
