package dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import utils.SparePart;
import utils.VehicleModel;

import java.util.Date;

/**
 * Created by parashan on 8/2/2017.
 */
public class SparePartDaoImpl {
    static SessionFactory factory;

    public int addSparePart(int sparePartId, int vehicleModelId, String sparePartName, String image, int units, Date orderedOn){

        Configuration configuration = new Configuration();
        configuration.configure();
        factory = configuration.buildSessionFactory();
        Session session = factory.openSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            SparePart vm = new SparePart(sparePartId,vehicleModelId,sparePartName,image,units,orderedOn);
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
