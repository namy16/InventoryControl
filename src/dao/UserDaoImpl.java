package dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import utils.SparePart;
import utils.User;
import utils.VehicleModel;

import javax.persistence.Query;
import java.util.Date;
import java.util.List;

/**
 * Created by parashan on 8/2/2017.
 */
public class UserDaoImpl {
    static SessionFactory factory;

    public int addUser(String name, String emailId, String password, long phone, long aadhar, String address){

        Configuration configuration = new Configuration();
        configuration.configure();
        factory = configuration.buildSessionFactory();
        Session session = factory.openSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            User vm = new User(name,emailId,password,phone,aadhar,address);
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

    public User findUser(String emailId){
        Configuration configuration = new Configuration();
        configuration.configure();
        factory = configuration.buildSessionFactory();
        Session session = factory.openSession();
        Query q = session.createQuery("from User where emailId = :emailId");
        q.setParameter("emailId", emailId);
        if(q.getResultList().size() == 0){
            return null;
        }
        return (User) q.getSingleResult();
    }




    public List<User> listUsers( ){
        Configuration configuration = new Configuration();
        configuration.configure();
        factory = configuration.buildSessionFactory();
        Session session = factory.openSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            Query qry = session.createQuery("FROM User");
            List users = qry.getResultList();
            tx.commit();
            return users;
        }catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        }finally {
            session.close();
        }
        return null;
    }

}
