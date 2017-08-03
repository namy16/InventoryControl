package rest;

import dao.VehicleModelDaoImpl;
import utils.VehicleModel;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.ArrayList;
import java.util.List;


@Path("/server")
public class RESTJSONServer {


	@GET
	@Path("/viewVehicleModel")
	@Produces(MediaType.APPLICATION_JSON)
	public List<VehicleModel> getTrackInJSON() {
		VehicleModelDaoImpl vdm = new VehicleModelDaoImpl();
		return vdm.listVehicleModels();
	}

	@POST
	@Path("/psng")
	@Consumes(MediaType.APPLICATION_JSON)
	//@Produces(MediaType.APPLICATION_XML)
	public String createTrackInJSON(String track) {
		//JSONParser parser = new JSONParser(track. JSONPa);
		//JsonObject json = (JsonObject) parser.parse(track);

		String result = "Track saved : " + track;
		System.out.println("createTrackInJSON()...."+result);
		return track;

	}

}
