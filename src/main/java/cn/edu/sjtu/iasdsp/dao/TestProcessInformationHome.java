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

import cn.edu.sjtu.iasdsp.model.TestProcessInformation;

/**
 * Home object for domain model class ProcessInformations.
 * @see cn.edu.sjtu.iasdsp.dao.ProcessInformation
 * @author Hibernate Tools
 */
@Repository
public class TestProcessInformationHome {

	private static final Log log = LogFactory.getLog(TestProcessInformationHome.class);

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

	public void persist(TestProcessInformation transientInstance) {
		log.debug("persisting TestProcessInformation instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(TestProcessInformation instance) {
		log.debug("attaching dirty TestProcessInformation instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TestProcessInformation instance) {
		log.debug("attaching clean TestProcessInformation instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(TestProcessInformation persistentInstance) {
		log.debug("deleting TestProcessInformation instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public TestProcessInformation merge(TestProcessInformation detachedInstance) {
		log.debug("merging ProcessInformations instance");
		try {
			TestProcessInformation result = (TestProcessInformation) sessionFactory.getCurrentSession()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public TestProcessInformation findById(java.lang.Integer id) {
		log.debug("getting TestProcessInformation instance with id: " + id);
		try {
			TestProcessInformation instance = (TestProcessInformation) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.model.TestProcessInformation", id);
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

	public List<TestProcessInformation> findByExample(TestProcessInformation instance) {
		log.debug("finding ProcessInformations instance by example");
		try {
			List<TestProcessInformation> results = (List<TestProcessInformation>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.model.TestProcessInformation")
					.add(create(instance)).list(); log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
	

}
