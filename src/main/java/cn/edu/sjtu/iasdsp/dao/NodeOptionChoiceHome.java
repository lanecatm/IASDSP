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

import cn.edu.sjtu.iasdsp.model.NodeOptionChoice;

/**
 * Home object for domain model class NodeOptionChoice.
 * @see cn.edu.sjtu.iasdsp.dao.NodeOptionChoice
 * @author Hibernate Tools
 */
@Repository
public class NodeOptionChoiceHome {

	private static final Log log = LogFactory.getLog(NodeOptionChoiceHome.class);

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

	public void persist(NodeOptionChoice transientInstance) {
		log.debug("persisting NodeOptionChoice instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(NodeOptionChoice instance) {
		log.debug("attaching dirty NodeOptionChoice instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(NodeOptionChoice instance) {
		log.debug("attaching clean NodeOptionChoice instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(NodeOptionChoice persistentInstance) {
		log.debug("deleting NodeOptionChoice instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public NodeOptionChoice merge(NodeOptionChoice detachedInstance) {
		log.debug("merging NodeOptionChoice instance");
		try {
			NodeOptionChoice result = (NodeOptionChoice) sessionFactory.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public NodeOptionChoice findById(java.lang.Integer id) {
		log.debug("getting NodeOptionChoice instance with id: " + id);
		try {
			NodeOptionChoice instance = (NodeOptionChoice) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.model.NodeOptionChoice", id);
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

	public List<NodeOptionChoice> findByExample(NodeOptionChoice instance) {
		log.debug("finding NodeOptionChoice instance by example");
		try {
			List<NodeOptionChoice> results = (List<NodeOptionChoice>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.model.NodeOptionChoice").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
