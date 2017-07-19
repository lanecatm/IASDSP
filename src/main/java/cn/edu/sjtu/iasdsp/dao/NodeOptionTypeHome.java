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

import cn.edu.sjtu.iasdsp.model.NodeOptionType;

/**
 * Home object for domain model class NodeOptionType.
 * @see cn.edu.sjtu.iasdsp.dao.NodeOptionType
 * @author Hibernate Tools
 */
@Repository
public class NodeOptionTypeHome {

	private static final Log log = LogFactory.getLog(NodeOptionTypeHome.class);

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

	public void persist(NodeOptionType transientInstance) {
		log.debug("persisting NodeOptionType instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(NodeOptionType instance) {
		log.debug("attaching dirty NodeOptionType instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(NodeOptionType instance) {
		log.debug("attaching clean NodeOptionType instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(NodeOptionType persistentInstance) {
		log.debug("deleting NodeOptionType instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public NodeOptionType merge(NodeOptionType detachedInstance) {
		log.debug("merging NodeOptionType instance");
		try {
			NodeOptionType result = (NodeOptionType) sessionFactory.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public NodeOptionType findById(java.lang.Integer id) {
		log.debug("getting NodeOptionType instance with id: " + id);
		try {
			NodeOptionType instance = (NodeOptionType) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.model.NodeOptionType", id);
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

	public List<NodeOptionType> findByExample(NodeOptionType instance) {
		log.debug("finding NodeOptionType instance by example");
		try {
			List<NodeOptionType> results = (List<NodeOptionType>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.model.NodeOptionType").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
