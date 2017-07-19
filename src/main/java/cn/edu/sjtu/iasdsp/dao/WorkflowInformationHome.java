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

import cn.edu.sjtu.iasdsp.model.WikiPage;
import cn.edu.sjtu.iasdsp.model.WorkflowInformation;

/**
 * Home object for domain model class WorkflowInformation.
 * @see cn.edu.sjtu.iasdsp.dao.WorkflowInformation
 * @author Hibernate Tools
 */
@Repository
public class WorkflowInformationHome {

	private static final Log log = LogFactory.getLog(WorkflowInformationHome.class);

	@Autowired
	private SessionFactory sessionFactory;

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(WorkflowInformation transientInstance) {
		log.debug("persisting WorkflowInformation instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(WorkflowInformation instance) {
		log.debug("attaching dirty WorkflowInformation instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(WorkflowInformation instance) {
		log.debug("attaching clean WorkflowInformation instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(WorkflowInformation persistentInstance) {
		log.debug("deleting WorkflowInformation instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public WorkflowInformation merge(WorkflowInformation detachedInstance) {
		log.debug("merging WorkflowInformation instance");
		try {
			WorkflowInformation result = (WorkflowInformation) sessionFactory.getCurrentSession()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public WorkflowInformation findById(java.lang.Integer id) {
		log.debug("getting WorkflowInformation instance with id: " + id);
		try {
			WorkflowInformation instance = (WorkflowInformation) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.model.WorkflowInformation", id);
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

	public List<WorkflowInformation> findByExample(WorkflowInformation instance) {
		log.debug("finding WorkflowInformation instance by example");
		try {
			List<WorkflowInformation> results = (List<WorkflowInformation>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.model.WorkflowInformation").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
	
	public List<WorkflowInformation> findByExampleEnableLike(WorkflowInformation instance) {
		log.debug("finding WorkflowInformation instance by example as like");
		try {
			List<WorkflowInformation> results = (List<WorkflowInformation>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.model.WorkflowInformation").add(create(instance).enableLike()).list();
			log.debug("find by example as like successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example as like failed", re);
			throw re;
		}
	}
}
