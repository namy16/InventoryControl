package dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import utils.VehicleModel;
import utils.VehicleModelRequest;

import java.util.Date;

/**
 * Created by parashan on 8/2/2017.
 */
public class VehicleModelRequestDaoImpl {
    static SessionFactory factory;

    public int addVehicleModelRequest(int modelId, boolean isProcessed, int units, Date orderDate){

        Configuration configuration = new Configuration();
        configuration.configure();
        factory = configuration.buildSessionFactory();
        Session session = factory.openSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            VehicleModelRequest vm = new VehicleModelRequest(modelId,isProcessed,units,orderDate);
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
}
