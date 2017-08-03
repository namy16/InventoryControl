package dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import utils.SoldSparePart;
import utils.SoldVehicleModel;
import utils.User;

import javax.persistence.Query;
import javax.xml.stream.FactoryConfigurationError;
import java.util.Date;
import java.util.List;

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
    public SoldVehicleModel findSoldVehicleModel(int modelId){
        Configuration configuration = new Configuration();
        configuration.configure();
        factory = configuration.buildSessionFactory();
        Session session = factory.openSession();
        Query q = session.createQuery("from SoldVehicleModel where modelId = :modelId");
        q.setParameter("modelId", modelId);
        if(q.getSingleResult() == null){
            return null;
        }
        return (SoldVehicleModel) q.getSingleResult();
    }
    public List<SoldVehicleModel> listSoldVehicleModels( ){
        Configuration configuration = new Configuration();
        configuration.configure();
        factory = configuration.buildSessionFactory();
        Session session = factory.openSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            Query qry = session.createQuery("FROM SoldVehicleModel ");
            List soldvehiclemodels = qry.getResultList();
            tx.commit();
            return soldvehiclemodels;
        }catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        }finally {
            session.close();
        }
        return null;
    }

}
