package dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import utils.SoldVehicleModel;
import utils.User;

import javax.xml.stream.FactoryConfigurationError;
import java.util.Date;

/**
 * Created by parashan on 8/2/2017.
 */
public class SoldVehicleModelDaoImpl {
    public static SessionFactory factory;
    public int addSoldVehicleModel(int modelId, String color, Date soldOn, String emailId){

        Configuration configuration = new Configuration();
        configuration.configure();
        factory = configuration.buildSessionFactory();
        Session session = factory.openSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            SoldVehicleModel vm = new SoldVehicleModel(modelId,color,soldOn,emailId);
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
