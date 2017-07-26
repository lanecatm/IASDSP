package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;
import javax.persistence.Entity;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.edu.sjtu.iasdsp.model.ProcessInformation;
import cn.edu.sjtu.iasdsp.model.WorkflowPerformance;
import cn.edu.sjtu.iasdsp.model.WorkflowVersion;

/**
 * Home object for domain model class ProcessInformations.
 * @see cn.edu.sjtu.iasdsp.dao.ProcessInformation
 * @author Hibernate Tools
 */
@Repository
public class ProcessInformationHome {

	private static final Log log = LogFactory.getLog(ProcessInformationHome.class);

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

	public void persist(ProcessInformation transientInstance) {
		log.debug("persisting ProcessInformations instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(ProcessInformation instance) {
		log.debug("attaching dirty ProcessInformations instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(ProcessInformation instance) {
		log.debug("attaching clean ProcessInformations instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(ProcessInformation persistentInstance) {
		log.debug("deleting ProcessInformations instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public ProcessInformation merge(ProcessInformation detachedInstance) {
		log.debug("merging ProcessInformations instance");
		try {
			ProcessInformation result = (ProcessInformation) sessionFactory.getCurrentSession()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public ProcessInformation findById(java.lang.Integer id) {
		log.debug("getting ProcessInformations instance with id: " + id);
		try {
			ProcessInformation instance = (ProcessInformation) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.model.ProcessInformation", id);
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

	public List<ProcessInformation> findByExample(ProcessInformation instance) {
		log.debug("finding ProcessInformations instance by example");
		try {
			List<ProcessInformation> results = (List<ProcessInformation>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.model.ProcessInformation")
					.add(create(instance)).list(); log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
	public List<ProcessInformation> findByWorkflowVersionId(int workflowVersionId ) {
		log.debug("finding ProcessInformation instance by workflowVersionId:" + workflowVersionId );
		try {
			List<ProcessInformation> results = (List<ProcessInformation>) sessionFactory.getCurrentSession()
					.createCriteria(ProcessInformation.class)
					.createAlias("workflowVersion", "workflowVersion").add(Restrictions.eq("workflowVersion.id",workflowVersionId ))
					.list();
			log.debug("finding ProcessInformation instance by workflowVersionId successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("finding ProcessInformation instance by workflowVersionId failed", re);
			throw re;
		}
	}	
	public List<ProcessInformation> findByParentSharedProcessRecordId(int parentSharedProcessRecordId ) {
		log.debug("finding ProcessInformation instance by parentSharedProcessRecordId:" + parentSharedProcessRecordId );
		try {
			List<ProcessInformation> results = (List<ProcessInformation>) sessionFactory.getCurrentSession()
					.createCriteria(ProcessInformation.class)
					.createAlias("parentSharedProcessRecord", "parentSharedProcessRecord").add(Restrictions.eq("parentSharedProcessRecord.id",parentSharedProcessRecordId ))
					.list();
			log.debug("finding ProcessInformation instance by parentSharedProcessRecordId successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("finding ProcessInformation instance by parentSharedProcessRecordId failed", re);
			throw re;
		}
	}	
}
