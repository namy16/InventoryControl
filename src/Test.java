import dao.*;
import utils.VehicleModel;
import utils.VehicleModelRequest;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

/**
 * Created by parashan on 8/2/2017.
 */
public class Test {
    public static void main(String[] args) {
        VehicleModelDaoImpl v = new VehicleModelDaoImpl();
        int result=v.addVehicleModel(1212,"Bmw","self shifting","red","none","car",20,"jkjk",new Date());
   if(result ==1) {
       System.out.println("Success");
   }
        // SparePartDaoImpl v = new SparePartDaoImpl();
       // int result=v.addSparePart(123,1212,"rear Wheel","none",2,new Date());

       /// UserDaoImpl v = new UserDaoImpl();
        //v.addUser("naman","namanparashar91@gmail.com","123",886889300,878787989,"Hyderabad");

        SoldVehicleModelDaoImpl v1= new SoldVehicleModelDaoImpl();
        v1.addSoldVehicleModel(1,"red",new Date(),"nasada");

        SoldSparePartDaoImpl v2 = new SoldSparePartDaoImpl();
        v2.addSoldSparePart(12,new Date(),"rtrt");

         VehicleModelRequestDaoImpl v3= new VehicleModelRequestDaoImpl();
        v3.addVehicleModelRequest(323,false,20,new Date());

        SparePartRequestDaoImpl v4= new SparePartRequestDaoImpl();
        v4.addSparePartRequest(433,true,10,new Date());

        VehicleModel vvv = new VehicleModel();
        vvv.setModelId(1212);
        vvv.setUnits(25);
        VehicleModelDaoImpl vv = new VehicleModelDaoImpl();
        vv.updateVehicleModel(vvv);

        //VehicleModelDaoImpl vv = new VehicleModelDaoImpl();
        //VehicleModel v=vv.findVehicleModel(1212);
        //System.out.println(v.getModelName()+" "+v.getColor()+" "+v.getTransmission());
        List l=  vv.listVehicleModels();
        Iterator<VehicleModel> itr = l.iterator();
        while(itr.hasNext()) {
            System.out.println(itr.next().getModelName());
        }
    }
}
