package dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import utils.SoldVehicleModel;
import utils.SparePart;
import utils.VehicleModel;
import utils.VehicleModelRequest;
import org.hibernate.*;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;
import javax.persistence.Query;
import java.util.Date;
import java.util.List;

/**
 * Created by parashan on 8/2/2017.
 */
public class VehicleModelRequestDaoImpl {
    static SessionFactory factory;

    public int addVehicleModelRequest(int modelId, boolean isProcessed, int units,String mfEmailId, Date orderDate){

        Configuration configuration = new Configuration();
        configuration.configure();
        factory = configuration.buildSessionFactory();
        Session session = factory.openSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            VehicleModelRequest vm = new VehicleModelRequest(modelId,isProcessed, units ,mfEmailId, orderDate);
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
    public int updateVehicleModelRequest(VehicleModelRequest s) {
        Configuration configuration = new Configuration();
        configuration.configure();
        factory = configuration.buildSessionFactory();
        Session session = factory.openSession();
        Object o = session.load(VehicleModelRequest.class, s.getRequestId());
        VehicleModelRequest s1 = (VehicleModelRequest) o;
        Transaction tx = session.beginTransaction();
        s1.setProcessed(s.isProcessed());
        tx.commit();
        session.close();
        return  1;
    }
    public VehicleModelRequest findVehicleModelRequest(int modelId){
        Configuration configuration = new Configuration();
        configuration.configure();
        factory = configuration.buildSessionFactory();
        Session session = factory.openSession();
        Query q = session.createQuery("from VehicleModelRequest where modelId = :modelId");
        q.setParameter("modelId", modelId);
        if(q.getSingleResult() == null){
            return null;
        }
        return (VehicleModelRequest) q.getSingleResult();
    }
    public List<VehicleModelRequest> listVehicleModelRequests( ){
        Configuration configuration = new Configuration();
        configuration.configure();
        factory = configuration.buildSessionFactory();
        Session session = factory.openSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            Query qry = session.createQuery("FROM VehicleModelRequest ");
            List vehiclemodelrequests = qry.getResultList();
            tx.commit();
            return vehiclemodelrequests;
        }catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        }finally {
            session.close();
        }
        return null;
    }

}
