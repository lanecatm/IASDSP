package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.WikiPageVersion;

/**
 * Home object for domain model class WikiPageVersion.
 * @see cn.edu.sjtu.iasdsp.dao.WikiPageVersion
 * @author Hibernate Tools
 */
public class WikiPageVersionHome {

	private static final Log log = LogFactory.getLog(WikiPageVersionHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(WikiPageVersion transientInstance) {
		log.debug("persisting WikiPageVersion instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(WikiPageVersion instance) {
		log.debug("attaching dirty WikiPageVersion instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(WikiPageVersion instance) {
		log.debug("attaching clean WikiPageVersion instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(WikiPageVersion persistentInstance) {
		log.debug("deleting WikiPageVersion instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public WikiPageVersion merge(WikiPageVersion detachedInstance) {
		log.debug("merging WikiPageVersion instance");
		try {
			WikiPageVersion result = (WikiPageVersion) sessionFactory.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public WikiPageVersion findById(java.lang.Integer id) {
		log.debug("getting WikiPageVersion instance with id: " + id);
		try {
			WikiPageVersion instance = (WikiPageVersion) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.WikiPageVersion", id);
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

	public List<WikiPageVersion> findByExample(WikiPageVersion instance) {
		log.debug("finding WikiPageVersion instance by example");
		try {
			List<WikiPageVersion> results = (List<WikiPageVersion>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.dao.WikiPageVersion").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
