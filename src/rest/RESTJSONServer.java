package rest;

import com.sun.jersey.multipart.FormDataParam;
import org.glassfish.jersey.media.multipart.FormDataContentDisposition;
import dao.*;
import utils.*;

import javax.imageio.ImageIO;
import javax.swing.*;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.awt.*;
import java.io.*;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;


@Path("/server")
public class RESTJSONServer {


	@GET
	@Path("/viewVehicleModel")
	@Produces(MediaType.APPLICATION_JSON)
	public List<VehicleModel> setVehicleModelInJSON() {
		VehicleModelDaoImpl vdm = new VehicleModelDaoImpl();
		return vdm.listVehicleModels();
	}


	@GET
	@Path("/viewSparePart")
	@Produces(MediaType.APPLICATION_JSON)
	public List<SparePart> setSparePartJSON() {
		SparePartDaoImpl spd = new SparePartDaoImpl();
		return spd.listSpareParts();
	}

	@GET
	@Path("/viewSoldVehicle")
	@Produces(MediaType.APPLICATION_JSON)
	public List<SoldVehicleModel> setSoldVehicle(){
		SoldVehicleModelDaoImpl svdmi = new SoldVehicleModelDaoImpl();
		return svdmi.listSoldVehicleModels();
	}

	@GET
	@Path("/viewSoldSparePart")
	@Produces(MediaType.APPLICATION_JSON)
	public List<SoldSparePart> setSoldSparePart(){
		SoldSparePartDaoImpl svdmi = new SoldSparePartDaoImpl();
		return svdmi.listSoldSpareParts();
	}

	@GET
	@Path("/viewVehicleModelRequests")
	@Produces(MediaType.APPLICATION_JSON)
	public List<VehicleModelRequest> setViewVehicleModelRequests(){
		VehicleModelRequestDaoImpl vmdr = new VehicleModelRequestDaoImpl();
		return vmdr.listVehicleModelRequests();
	}

	@GET
	@Path("/viewSparepartRequests")
	@Produces(MediaType.APPLICATION_JSON)
	public List<SparePartRequest> setViewSparepartRequests(){
		SparePartRequestDaoImpl vmdr = new SparePartRequestDaoImpl();
		return vmdr.listSparePartRequests();
	}

	@POST
	@Path("/getVehicle")
	@Consumes(MediaType.APPLICATION_JSON)
	//@Produces(MediaType.APPLICATION_XML)
	public VehicleModel getVehicleModeJSON(VehicleModel vm) {
		String result = "Track saved : " + vm;
		VehicleModelDaoImpl vmd = new VehicleModelDaoImpl();
		vmd.addVehicleModel(vm.getModelId(), vm.getModelName(), vm.getPrice(), vm.getTransmission(), vm.getColor(), vm.getImage(), vm.getBodyType(),vm.getUnits(), vm.getDescription(), vm.getReleaseDate());
		System.out.println("createTrackInJSON()...."+result);
		VehicleModelDaoImpl vmd1= new VehicleModelDaoImpl();
		vmd1.addVehicleModel(vm.getModelId(),vm.getModelName(),vm.getPrice(),vm.getTransmission(),vm.getColor(),vm.getImage(),vm.getBodyType(),vm.getUnits(),vm.getDescription(),vm.getReleaseDate());
		return vm;
	}

	@POST
	@Path("/getSparePart")
	@Consumes(MediaType.APPLICATION_JSON)
	//@Produces(MediaType.APPLICATION_XML)
	public SparePart getSparePartJSON(SparePart sp) {
		String result = "Track saved : " + sp;
		System.out.println("createTrackInJSON()...."+result);
		SparePartDaoImpl sparePartDao = new SparePartDaoImpl();
		sparePartDao.addSparePart(sp.getSparePartId(), sp.getVehicleModelId(), sp.getPrice(), sp.getSparePartName(), sp.getImage(), sp.getUnits(), sp.getOrderedOn());
		return sp;
	}

	@POST
	@Path("/getVehicleRequest")
	@Consumes(MediaType.APPLICATION_JSON)
	public VehicleModelRequest getVehicleRequest(VehicleModelRequest vm) throws ParseException {
		String result = "Request : "+vm;
		//DateFormat formatter = new SimpleDateFormat("E MMM dd HH:mm:ss Z yyyy");
		//System.out.println(date);
		VehicleModelRequestDaoImpl vdm = new VehicleModelRequestDaoImpl();
        System.out.println(vm.getOrderDate());
		vdm.addVehicleModelRequest(vm.getModelId(), vm.isProcessed(), vm.getUnits(), vm.getOrderDate());
		System.out.print(result);
		return vm;
	}

	@POST
	@Path("/getSparePartRequest")
	@Consumes(MediaType.APPLICATION_JSON)
	public SparePartRequest getSparePartRequest(SparePartRequest sp){
		String result = "Request : "+sp;
		SparePartRequestDaoImpl spdim = new SparePartRequestDaoImpl();
		spdim.addSparePartRequest(sp.getSparePartId(), sp.isProcessed(), sp.getUnits(), sp.getOrderDate());
		System.out.print(result);
		return sp;
	}


	@POST
	@Path("/updateVehicleRequest")
	@Consumes(MediaType.APPLICATION_JSON)
	public VehicleModelRequest updateVehicleRequest(VehicleModelRequest vm){
		String result = "Request : "+vm;
		VehicleModelRequestDaoImpl vdm = new VehicleModelRequestDaoImpl();
		vdm.updateVehicleModelRequest(vm);

		VehicleModelDaoImpl vehicleModelDao = new VehicleModelDaoImpl();
		vehicleModelDao.updateVehicleModel(vm.getModelId(), vm.getUnits());
		System.out.print(result);
		return vm;
	}

	@POST
	@Path("/updateSparePartRequest")
	@Consumes(MediaType.APPLICATION_JSON)
	public SparePartRequest updateSparepartRequest(SparePartRequest sp){
		String result = "Request : "+sp;
		SparePartRequestDaoImpl spm = new SparePartRequestDaoImpl();
		spm.updateSparePartRequest(sp);

		SparePartDaoImpl sdi = new SparePartDaoImpl();
		sdi.updateSparePart(sp.getSparePartId(), sp.getUnits());
		System.out.print(result);
		return sp;
	}

}
