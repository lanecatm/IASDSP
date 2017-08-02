package cn.edu.sjtu.iasdsp.dao;
// Generated 2017-8-2 1:49:49 by Hibernate Tools 5.2.3.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.edu.sjtu.iasdsp.model.NodeProcessInformation;

/**
 * Home object for domain model class NodeProcessInformation.
 * @see cn.edu.sjtu.iasdsp.dao.NodeProcessInformation
 * @author Hibernate Tools
 */
@Repository
public class NodeProcessInformationHome {

	private static final Log log = LogFactory.getLog(NodeProcessInformationHome.class);

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

	public void persist(NodeProcessInformation transientInstance) {
		log.debug("persisting NodeProcessInformation instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(NodeProcessInformation instance) {
		log.debug("attaching dirty NodeProcessInformation instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(NodeProcessInformation instance) {
		log.debug("attaching clean NodeProcessInformation instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(NodeProcessInformation persistentInstance) {
		log.debug("deleting NodeProcessInformation instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public NodeProcessInformation merge(NodeProcessInformation detachedInstance) {
		log.debug("merging NodeProcessInformation instance");
		try {
			NodeProcessInformation result = (NodeProcessInformation) sessionFactory.getCurrentSession()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public NodeProcessInformation findById(java.lang.Integer id) {
		log.debug("getting NodeProcessInformation instance with id: " + id);
		try {
			NodeProcessInformation instance = (NodeProcessInformation) sessionFactory.getCurrentSession()
					.get("cn.edu.sjtu.iasdsp.model.NodeProcessInformation", id);
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

	public List<NodeProcessInformation> findByExample(NodeProcessInformation instance) {
		log.debug("finding NodeProcessInformation instance by example");
		try {
			List<NodeProcessInformation> results = (List<NodeProcessInformation>) sessionFactory.getCurrentSession()
					.createCriteria("cn.edu.sjtu.iasdsp.model.NodeProcessInformation").add(create(instance)).list();
			
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
