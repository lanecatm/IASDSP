package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-20 16:50:51 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.edu.sjtu.iasdsp.model.WorkflowVersion;

/**
 * Home object for domain model class WorkflowVersions.
 * @see cn.edu.sjtu.iasdsp.dao.WorkflowVersions
 * @author Hibernate Tools
 */
@Repository
public class WorkflowVersionHome {

	private static final Log log = LogFactory.getLog(WorkflowVersionHome.class);

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

	public void persist(WorkflowVersion transientInstance) {
		log.debug("persisting WorkflowVersions instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(WorkflowVersion instance) {
		log.debug("attaching dirty WorkflowVersions instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(WorkflowVersion instance) {
		log.debug("attaching clean WorkflowVersions instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(WorkflowVersion persistentInstance) {
		log.debug("deleting WorkflowVersions instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public WorkflowVersion merge(WorkflowVersion detachedInstance) {
		log.debug("merging WorkflowVersions instance");
		try {
			WorkflowVersion result = (WorkflowVersion) sessionFactory.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public WorkflowVersion findById(java.lang.Integer id) {
		log.debug("getting WorkflowVersions instance with id: " + id);
		try {
			WorkflowVersion instance = (WorkflowVersion) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.model.WorkflowVersion", id);
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

	public List<WorkflowVersion> findByExample(WorkflowVersion instance) {
		log.debug("finding WorkflowVersions instance by example");
		try {
			List<WorkflowVersion> results = (List<WorkflowVersion>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.model.WorkflowVersion").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
	
	
		
	public List<WorkflowVersion> findByWorkflowInformationId(int workflowInformationId ) {
		log.debug("finding WorkflowVersion instance by workflowInformationId:" + workflowInformationId );
		try {
			List<WorkflowVersion> results = (List<WorkflowVersion>) sessionFactory.getCurrentSession()
					.createCriteria(WorkflowVersion.class)
					.createAlias("workflowInformation", "workflowInformation").add(Restrictions.eq("workflowInformation.id",workflowInformationId ))
					.list();
			log.debug("finding WorkflowVersion instance by workflowInformationId successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("finding WorkflowVersion instance by workflowInformationId failed", re);
			throw re;
		}
	}
}
