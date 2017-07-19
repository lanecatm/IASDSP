package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

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

import cn.edu.sjtu.iasdsp.model.WorkflowPerformance;

/**
 * Home object for domain model class WorkflowPerformance.
 * @see cn.edu.sjtu.iasdsp.dao.WorkflowPerformance
 * @author Hibernate Tools
 */
@Repository
public class WorkflowPerformanceHome {

	private static final Log log = LogFactory.getLog(WorkflowPerformanceHome.class);

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

	public void persist(WorkflowPerformance transientInstance) {
		log.debug("persisting WorkflowPerformance instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(WorkflowPerformance instance) {
		log.debug("attaching dirty WorkflowPerformance instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(WorkflowPerformance instance) {
		log.debug("attaching clean WorkflowPerformance instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(WorkflowPerformance persistentInstance) {
		log.debug("deleting WorkflowPerformance instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public WorkflowPerformance merge(WorkflowPerformance detachedInstance) {
		log.debug("merging WorkflowPerformance instance");
		try {
			WorkflowPerformance result = (WorkflowPerformance) sessionFactory.getCurrentSession()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public WorkflowPerformance findById(java.lang.Integer id) {
		log.debug("getting WorkflowPerformance instance with id: " + id);
		try {
			WorkflowPerformance instance = (WorkflowPerformance) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.model.WorkflowPerformance", id);
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

	public List<WorkflowPerformance> findByExample(WorkflowPerformance instance) {
		log.debug("finding WorkflowPerformance instance by example");
		try {
			List<WorkflowPerformance> results = (List<WorkflowPerformance>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.model.WorkflowPerformance").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
	
	public List<WorkflowPerformance> findByWikiPageIdAndWorkflowInformationId(int wikiPageId, int workflowInformationId ) {
		log.debug("finding WorkflowPerformance instance by WikiPageId:" + wikiPageId + " And WorkflowInformationId:" + workflowInformationId);
		try {
			List<WorkflowPerformance> results = (List<WorkflowPerformance>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.model.WorkflowPerformance")
					.createAlias("cn.edu.sjtu.iasdsp.model.WorkflowInformation", "workflowInformation").add(Restrictions.eq("workflowInformation.id",workflowInformationId ))
					.createAlias("cn.edu.sjtu.iasdsp.model.WikiPage", "wikiPage").add(Restrictions.eq("wikiPage.id",wikiPageId ))
					.list();
			log.debug("find by WikiPageId And WorkflowInformationId successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by WikiPageId And WorkflowInformationId failed", re);
			throw re;
		}
	}
}
