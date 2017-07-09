package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-7-9 2:25:32 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import cn.edu.sjtu.iasdsp.model.WikiRelationship;

/**
 * Home object for domain model class WikiRelationship.
 * @see cn.edu.sjtu.iasdsp.dao.WikiRelationship
 * @author Hibernate Tools
 */
public class WikiRelationshipHome {

	private static final Log log = LogFactory.getLog(WikiRelationshipHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(WikiRelationship transientInstance) {
		log.debug("persisting WikiRelationship instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(WikiRelationship instance) {
		log.debug("attaching dirty WikiRelationship instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(WikiRelationship instance) {
		log.debug("attaching clean WikiRelationship instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(WikiRelationship persistentInstance) {
		log.debug("deleting WikiRelationship instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public WikiRelationship merge(WikiRelationship detachedInstance) {
		log.debug("merging WikiRelationship instance");
		try {
			WikiRelationship result = (WikiRelationship) sessionFactory.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public WikiRelationship findById(java.lang.Integer id) {
		log.debug("getting WikiRelationship instance with id: " + id);
		try {
			WikiRelationship instance = (WikiRelationship) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.dao.WikiRelationship", id);
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

	public List<WikiRelationship> findByExample(WikiRelationship instance) {
		log.debug("finding WikiRelationship instance by example");
		try {
			List<WikiRelationship> results = (List<WikiRelationship>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.dao.WikiRelationship").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
