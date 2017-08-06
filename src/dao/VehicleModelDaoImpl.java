package dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import utils.VehicleModel;

import javax.persistence.Query;
import java.sql.Connection;
import java.util.Date;
import java.util.List;

/**
 * Created by parashan on 8/2/2017.
 */
public class VehicleModelDaoImpl {
    static SessionFactory factory;

    public int addVehicleModel(int modelId, String modelName,int price,String transmission,String color,String image,String bodyType,int units,String description,Date releaseDate){

        Configuration configuration = new Configuration();
        configuration.configure();
        factory = configuration.buildSessionFactory();
        Session session = factory.openSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            VehicleModel vm = new VehicleModel(modelId,modelName,price,transmission,color,image, bodyType, units,description,releaseDate);
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
    public int updateVehicleModel(int id, int units) {
        Configuration configuration = new Configuration();
        configuration.configure();
        factory = configuration.buildSessionFactory();
        Session session = factory.openSession();
        Object o = session.load(VehicleModel.class, id);
        VehicleModel v1 = (VehicleModel) o;
        Transaction tx = session.beginTransaction();
        v1.setUnits(v1.getUnits()+units);
        tx.commit();
        session.close();
        return  1;
    }
    public VehicleModel findVehicleModel(int modelId){
        Configuration configuration = new Configuration();
        configuration.configure();
        factory = configuration.buildSessionFactory();
        Session session = factory.openSession();
        Query q = session.createQuery("from VehicleModel where modelId = :modelId");
        q.setParameter("modelId", modelId);
        if(q.getSingleResult() == null){
            return null;
        }
        return (VehicleModel) q.getSingleResult();
    }

    public List<VehicleModel> listVehicleModels( ){
        Configuration configuration = new Configuration();
        configuration.configure();
        factory = configuration.buildSessionFactory();
        Session session = factory.openSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            Query qry = session.createQuery("FROM VehicleModel ");
            List vehicles = qry.getResultList();
            tx.commit();
            return vehicles;
        }catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        }finally {
            session.close();
        }
        return null;
    }
}

