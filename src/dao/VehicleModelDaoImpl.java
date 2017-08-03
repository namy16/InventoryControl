package dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import utils.VehicleModel;

import java.sql.Connection;
import java.util.Date;

/**
 * Created by parashan on 8/2/2017.
 */
public class VehicleModelDaoImpl {
    static SessionFactory factory;

    public int addVehicleModel(int modelId, String modelName,String transmission,String color,String image,String bodyType,int units,String description,Date releaseDate){

        Configuration configuration = new Configuration();
        configuration.configure();
        factory = configuration.buildSessionFactory();
        Session session = factory.openSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            VehicleModel vm = new VehicleModel(modelId,modelName,transmission, color,image, bodyType, units,description,releaseDate);
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
    public void updateVehicle(VehicleModel v) {
        Session session = factory.openSession();
        Object o = session.load(VehicleModel.class, v.getModelId());
        VehicleModel v1 = (VehicleModel) o;
        Transaction tx = session.beginTransaction();
        v1.setUnits(v.getUnits());
        tx.commit();
        session.close();
    }
}

}