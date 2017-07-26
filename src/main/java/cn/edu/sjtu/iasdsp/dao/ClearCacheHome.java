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

import cn.edu.sjtu.iasdsp.model.ArffType;

/**
 * Home object for domain model class ArffType.
 * @see cn.edu.sjtu.iasdsp.dao.ArffType
 * @author Hibernate Tools
 */
@Repository
public class ClearCacheHome {

	private static final Log log = LogFactory.getLog(ClearCacheHome.class);

	@Autowired
	private SessionFactory sessionFactory;


	public void clear() {
		log.debug("clear cache instance");
		try {
			sessionFactory.getCurrentSession().clear();
			log.debug("clear successful");
		} catch (RuntimeException re) {
			log.error("clear failed", re);
			throw re;
		}
	}

}
