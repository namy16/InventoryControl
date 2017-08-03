package dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import utils.SparePart;
import utils.SparePartRequest;
import utils.VehicleModelRequest;

import javax.persistence.Query;
import java.util.Date;
import java.util.List;

/**
 * Created by parashan on 8/2/2017.
 */
public class SparePartRequestDaoImpl {
    static SessionFactory factory;

    public int addSparePartRequest(int sparePartId, boolean isProcessed, int units, Date orderDate){

        Configuration configuration = new Configuration();
        configuration.configure();
        factory = configuration.buildSessionFactory();
        Session session = factory.openSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            SparePartRequest vm = new SparePartRequest(sparePartId,isProcessed,units,orderDate);
            session.save(vm);
            tx.commit();
        }catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        }finally {
            session.close();
        }
        return 1;
    }
    public int updateSparePartRequest(SparePartRequest s) {
        Configuration configuration = new Configuration();
        configuration.configure();
        factory = configuration.buildSessionFactory();
        Session session = factory.openSession();
        Object o = session.load(SparePartRequest.class, s.getRequestId());
        SparePartRequest s1 = (SparePartRequest) o;
        Transaction tx = session.beginTransaction();
        s1.setProcessed(s.isProcessed());
        tx.commit();
        session.close();
        return  1;
    }
    public SparePartRequest findSparePartRequest(int sparePartId){
        Configuration configuration = new Configuration();
        configuration.configure();
        factory = configuration.buildSessionFactory();
        Session session = factory.openSession();
        Query q = session.createQuery("from SparePartRequest where sparePartId = :sparePartId");
        q.setParameter("sparePartId", sparePartId);
        if(q.getSingleResult() == null){
            return null;
        }
        return (SparePartRequest) q.getSingleResult();
    }
    public List<SparePartRequest> listSparePartRequests( ){
        Configuration configuration = new Configuration();
        configuration.configure();
        factory = configuration.buildSessionFactory();
        Session session = factory.openSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            Query qry = session.createQuery("FROM SparePartRequest ");
            List sparepartrequests = qry.getResultList();
            tx.commit();
            return sparepartrequests;
        }catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        }finally {
            session.close();
        }
        return null;
    }
}
