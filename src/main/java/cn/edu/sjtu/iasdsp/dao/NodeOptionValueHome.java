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

import cn.edu.sjtu.iasdsp.model.NodeOptionValue;

/**
 * Home object for domain model class NodeOptionValue.
 * @see cn.edu.sjtu.iasdsp.dao.NodeOptionValue
 * @author Hibernate Tools
 */
@Repository
public class NodeOptionValueHome {

	private static final Log log = LogFactory.getLog(NodeOptionValueHome.class);

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

	public void persist(NodeOptionValue transientInstance) {
		log.debug("persisting NodeOptionValue instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(NodeOptionValue instance) {
		log.debug("attaching dirty NodeOptionValue instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(NodeOptionValue instance) {
		log.debug("attaching clean NodeOptionValue instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(NodeOptionValue persistentInstance) {
		log.debug("deleting NodeOptionValue instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public NodeOptionValue merge(NodeOptionValue detachedInstance) {
		log.debug("merging NodeOptionValue instance");
		try {
			NodeOptionValue result = (NodeOptionValue) sessionFactory.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public NodeOptionValue findById(java.lang.Integer id) {
		log.debug("getting NodeOptionValue instance with id: " + id);
		try {
			NodeOptionValue instance = (NodeOptionValue) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.model.NodeOptionValue", id);
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

	public List<NodeOptionValue> findByExample(NodeOptionValue instance) {
		log.debug("finding NodeOptionValue instance by example");
		try {
			List<NodeOptionValue> results = (List<NodeOptionValue>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.model.NodeOptionValue").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
