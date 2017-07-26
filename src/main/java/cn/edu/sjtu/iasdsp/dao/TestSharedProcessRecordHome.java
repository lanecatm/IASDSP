package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-22 17:47:10 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.edu.sjtu.iasdsp.model.TestSharedProcessRecord;

/**
 * Home object for domain model class SharedProcessRecord.
 * 
 * @see cn.edu.sjtu.iasdsp.dao.SharedProcessRecord
 * @author Hibernate Tools
 */
@Repository
public class TestSharedProcessRecordHome {

	private static final Log log = LogFactory.getLog(TestSharedProcessRecordHome.class);

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

	public void persist(TestSharedProcessRecord transientInstance) {
		log.debug("persisting TestSharedProcessRecord instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(TestSharedProcessRecord instance) {
		log.debug("attaching dirty TestSharedProcessRecord instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TestSharedProcessRecord instance) {
		log.debug("attaching clean TestSharedProcessRecord instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(TestSharedProcessRecord persistentInstance) {
		log.debug("deleting TestSharedProcessRecord instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public TestSharedProcessRecord merge(TestSharedProcessRecord detachedInstance) {
		log.debug("merging TestSharedProcessRecord instance");
		try {
			TestSharedProcessRecord result = (TestSharedProcessRecord) sessionFactory.getCurrentSession()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public TestSharedProcessRecord findById(java.lang.Integer id) {
		log.debug("getting TestSharedProcessRecord instance with id: " + id);
		try {
			TestSharedProcessRecord instance = (TestSharedProcessRecord) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.model.TestSharedProcessRecord", id);
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

	public List<TestSharedProcessRecord> findByExample(TestSharedProcessRecord instance) {
		log.debug("finding TestSharedProcessRecord instance by example");
		try {
			List<TestSharedProcessRecord> results = (List<TestSharedProcessRecord>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.model.TestSharedProcessRecord").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
