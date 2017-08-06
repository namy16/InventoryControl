package dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import utils.SparePart;
import utils.SparePartRequest;
import utils.VehicleModel;

import javax.persistence.Query;
import java.util.Date;
import java.util.List;

/**
 * Created by parashan on 8/2/2017.
 */
public class SparePartDaoImpl {
    static SessionFactory factory;

    public int addSparePart(int sparePartId, int vehicleModelId,int price, String sparePartName, String image, int units, Date orderedOn){

        Configuration configuration = new Configuration();
        configuration.configure();
        factory = configuration.buildSessionFactory();
        Session session = factory.openSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            SparePart vm = new SparePart(sparePartId,vehicleModelId,sparePartName,price,image,units,orderedOn);
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
    public int updateSparePart(int id, int units) {
        Configuration configuration = new Configuration();
        configuration.configure();
        factory = configuration.buildSessionFactory();
        Session session = factory.openSession();
        Object o = session.load(SparePart.class, id);
        SparePart s1 = (SparePart) o;
        Transaction tx = session.beginTransaction();
        s1.setUnits(s1.getUnits()+units);
        tx.commit();
        session.close();
        return  1;
    }
    public SparePart findSparePart(int sparePartId){
        Configuration configuration = new Configuration();
        configuration.configure();
        factory = configuration.buildSessionFactory();
        Session session = factory.openSession();
        Query q = session.createQuery("from SparePart where sparePartId = :sparePartId");
        q.setParameter("sparePartId", sparePartId);
        if(q.getSingleResult() == null){
            return null;
        }
        return (SparePart) q.getSingleResult();
    }
    public List<SparePart> listSpareParts( ){
        Configuration configuration = new Configuration();
        configuration.configure();
        factory = configuration.buildSessionFactory();
        Session session = factory.openSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            Query qry = session.createQuery("FROM SparePart ");
            List spareparts = qry.getResultList();
            tx.commit();
            return spareparts;
        }catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        }finally {
            session.close();
        }
        return null;
    }
}
