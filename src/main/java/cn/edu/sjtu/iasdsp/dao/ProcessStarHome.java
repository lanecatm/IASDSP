package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-24 21:01:33 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.edu.sjtu.iasdsp.model.ProcessInformation;
import cn.edu.sjtu.iasdsp.model.ProcessStar;

/**
 * Home object for domain model class ProcessStar.
 * @see cn.edu.sjtu.iasdsp.dao.ProcessStar
 * @author Hibernate Tools
 */
@Repository
public class ProcessStarHome {

	private static final Log log = LogFactory.getLog(ProcessStarHome.class);

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

	public void persist(ProcessStar transientInstance) {
		log.debug("persisting ProcessStar instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(ProcessStar instance) {
		log.debug("attaching dirty ProcessStar instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(ProcessStar instance) {
		log.debug("attaching clean ProcessStar instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(ProcessStar persistentInstance) {
		log.debug("deleting ProcessStar instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public ProcessStar merge(ProcessStar detachedInstance) {
		log.debug("merging ProcessStar instance");
		try {
			ProcessStar result = (ProcessStar) sessionFactory.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public ProcessStar findById(java.lang.Integer id) {
		log.debug("getting ProcessStar instance with id: " + id);
		try {
			ProcessStar instance = (ProcessStar) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.model.ProcessStar", id);
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

	public List<ProcessStar> findByExample(ProcessStar instance) {
		log.debug("finding ProcessStar instance by example");
		try {
			List<ProcessStar> results = (List<ProcessStar>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.model.ProcessStar").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
	
	
	public List<ProcessStar> findByprocessInformationId(int processInformationId ) {
		log.debug("finding ProcessStar instance by processInformationId:" + processInformationId );
		try {
			List<ProcessStar> results = (List<ProcessStar>) sessionFactory.getCurrentSession()
					.createCriteria(ProcessStar.class)
					.createAlias("processInformation", "processInformation").add(Restrictions.eq("processInformation.id",processInformationId ))
					.list();
			log.debug("finding ProcessStar instance by processInformationId successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("finding ProcessStar instance by processInformationId failed", re);
			throw re;
		}
	}
	


}
