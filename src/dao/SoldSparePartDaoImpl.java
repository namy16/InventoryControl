package dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import utils.SoldSparePart;
import utils.SoldVehicleModel;
import utils.SparePart;

import javax.persistence.Query;
import java.util.Date;
import java.util.List;

/**
 * Created by parashan on 8/2/2017.
 */
public class SoldSparePartDaoImpl {
    public static SessionFactory factory;
    public int addSoldSparePart(int sparePartId, Date soldOn, String emailId){

        Configuration configuration = new Configuration();
        configuration.configure();
        factory = configuration.buildSessionFactory();
        Session session = factory.openSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            SoldSparePart vm = new SoldSparePart(sparePartId,soldOn,emailId);
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
    public SoldSparePart findSoldSparePart(int sparePartId){
        Configuration configuration = new Configuration();
        configuration.configure();
        factory = configuration.buildSessionFactory();
        Session session = factory.openSession();
        Query q = session.createQuery("from SoldSparePart where sparePartId = :sparePartId");
        q.setParameter("sparePartId", sparePartId);
        if(q.getSingleResult() == null){
            return null;
        }
        return (SoldSparePart) q.getSingleResult();
    }
    public List<SoldSparePart> listSoldSpareParts( ){
        Configuration configuration = new Configuration();
        configuration.configure();
        factory = configuration.buildSessionFactory();
        Session session = factory.openSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            Query qry = session.createQuery("FROM SoldSparePart ");
            List soldspareparts = qry.getResultList();
            tx.commit();
            return soldspareparts;
        }catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        }finally {
            session.close();
        }
        return null;
    }

}
