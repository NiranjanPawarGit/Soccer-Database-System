package com.mcnz.restful.java.example;

import javax.ws.rs.*;
import com.mcnz.restful.java.model.*;
import com.mcnz.restful.java.dao.*;
import java.io.FileReader;
import java.util.Iterator;
import javax.ws.rs.core.Response;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import javax.ws.rs.core.MediaType;


@Path("/test")
public class testservices {
	
	@GET
	@Path("/clubnamePlayers")
	@Produces("application/json")
	public JSONObject getfromdao(@QueryParam("wcYear") int wcYear) {
		JSONObject jobj  = new JSONObject();
		myDataDaoImpl myDaoImpl = new myDataDaoImpl();

		jobj = myDaoImpl.getClubDetails(wcYear);
		
		return jobj;
	}
	
	@GET
	@Path("/clubname")
	@Produces("text/plain")
	public String getclubname(@QueryParam("wcYear") int wcYear) {
		String clubname = "";
		myDataDaoImpl myDaoImpl = new myDataDaoImpl();

		clubname = myDaoImpl.getClubName(wcYear);
		return clubname;

	}
	@GET
	@Path("/playerscount")
	@Produces("text/plain")
	public String getPlayersCount(@QueryParam("wcYear") int wcYear) {
		String playerscount = "";
		myDataDaoImpl myDaoImpl = new myDataDaoImpl();

		playerscount = myDaoImpl.getPlayersCount(wcYear);
		return playerscount;

	}
	
	@GET
	@Path("/wcentryadd")
	@Produces("text/plain")
	public String wcentryadd(@QueryParam("wcYear") int wcYear,
							@QueryParam("wc") String wc, @QueryParam("hc") String hc, @QueryParam("frc") String frc	) {
		String return1 = "";
		myDataDaoImpl myDaoImpl = new myDataDaoImpl();

		return1 = myDaoImpl.insertworldcup(wcYear, wcYear, wc , hc, frc);
		return1 = myDaoImpl.updateworldcup();
		return return1;
		
	}
	
	
}
