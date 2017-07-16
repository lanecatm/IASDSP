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

import cn.edu.sjtu.iasdsp.model.WorkflowPrivilege;

/**
 * Home object for domain model class WorkflowPrivilege.
 * @see cn.edu.sjtu.iasdsp.dao.WorkflowPrivilege
 * @author Hibernate Tools
 */
@Repository
public class WorkflowPrivilegeHome {

	private static final Log log = LogFactory.getLog(WorkflowPrivilegeHome.class);

	@Autowired
	private SessionFactory sessionFactory ;

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(WorkflowPrivilege transientInstance) {
		log.debug("persisting WorkflowPrivilege instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(WorkflowPrivilege instance) {
		log.debug("attaching dirty WorkflowPrivilege instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(WorkflowPrivilege instance) {
		log.debug("attaching clean WorkflowPrivilege instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(WorkflowPrivilege persistentInstance) {
		log.debug("deleting WorkflowPrivilege instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public WorkflowPrivilege merge(WorkflowPrivilege detachedInstance) {
		log.debug("merging WorkflowPrivilege instance");
		try {
			WorkflowPrivilege result = (WorkflowPrivilege) sessionFactory.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public WorkflowPrivilege findById(java.lang.Integer id) {
		log.debug("getting WorkflowPrivilege instance with id: " + id);
		try {
			WorkflowPrivilege instance = (WorkflowPrivilege) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.model.WorkflowPrivilege", id);
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

	public List<WorkflowPrivilege> findByExample(WorkflowPrivilege instance) {
		log.debug("finding WorkflowPrivilege instance by example");
		try {
			List<WorkflowPrivilege> results = (List<WorkflowPrivilege>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.model.WorkflowPrivilege").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
