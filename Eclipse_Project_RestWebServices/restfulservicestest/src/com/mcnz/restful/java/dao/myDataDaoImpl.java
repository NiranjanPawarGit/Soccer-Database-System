package com.mcnz.restful.java.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.mcnz.restful.java.model.myDataModel;
import java.io.FileReader;
import java.util.Iterator;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class myDataDaoImpl {

public JSONObject getClubDetails(int wcYear) {
	//String clubProducedPlayersInfo = "from Dao Impl class";
JDBCConnection jdbcConnection = new JDBCConnection();
JSONObject jObj = new JSONObject();
Connection con = jdbcConnection.getConnnection();

try {	
	Statement statement = null;
	statement = con.createStatement();
  // Result set get the result of the SQL query
  ResultSet resultSet = statement.executeQuery("select clubname, max(PlayersCount) as PlayersCount from (SELECT CLUBNAME AS CLUBNAME, COUNT(*) "
		  										+ "AS PlayersCount FROM PLAYER WHERE WC_TEAM_ID IN \r\n" + 
  							"			(SELECT WC_TEAM_ID FROM WORLDCUP_TEAMS WHERE WC_ID =" + wcYear + ") GROUP BY CLUBNAME) c;");
  while (resultSet.next()) {
	  jObj.put("clubname", resultSet.getString("clubname"));
	  jObj.put("playerscount", resultSet.getInt("PlayersCount"));
  }


} catch (SQLException e) {
 // TODO Auto-generated catch block
 e.printStackTrace();
 }
finally {
  try {
      if (con != null) {
          con.close();
      	System.out.println("Disconnected to MySQL server.");
      }
  } 
  catch(SQLException e) {
      System.err.println("Exception:" + e.getMessage());
  }
}

		return jObj;
 }

public String getClubName(int wcYear) {
	//String clubProducedPlayersInfo = "from Dao Impl class";
	String clubname ="";
JDBCConnection jdbcConnection = new JDBCConnection();

Connection con = jdbcConnection.getConnnection();

try {	
	Statement statement = null;
	statement = con.createStatement();
  // Result set get the result of the SQL query
  ResultSet resultSet = statement.executeQuery("select clubname, max(PlayersCount) as PlayersCount from (SELECT CLUBNAME AS CLUBNAME, COUNT(*) "
		  										+ "AS PlayersCount FROM PLAYER WHERE WC_TEAM_ID IN \r\n" + 
  							"			(SELECT WC_TEAM_ID FROM WORLDCUP_TEAMS WHERE WC_ID =" + wcYear + ") GROUP BY CLUBNAME) c;");
  while (resultSet.next()) {
	  clubname = resultSet.getString("clubname");
  }


} catch (SQLException e) {
 // TODO Auto-generated catch block
 e.printStackTrace();
 }
finally {
  try {
      if (con != null) {
          con.close();
      	System.out.println("Disconnected to MySQL server.");
      }
  } 
  catch(SQLException e) {
      System.err.println("Exception:" + e.getMessage());
  }
}

		return clubname;
 }
public String getPlayersCount(int wcYear) {
	//String clubProducedPlayersInfo = "from Dao Impl class";
	String playerscount ="";
JDBCConnection jdbcConnection = new JDBCConnection();

Connection con = jdbcConnection.getConnnection();

try {	
	Statement statement = null;
	statement = con.createStatement();
  // Result set get the result of the SQL query
  ResultSet resultSet = statement.executeQuery("select clubname, max(PlayersCount) as PlayersCount from (SELECT CLUBNAME AS CLUBNAME, COUNT(*) "
		  										+ "AS PlayersCount FROM PLAYER WHERE WC_TEAM_ID IN \r\n" + 
  							"			(SELECT WC_TEAM_ID FROM WORLDCUP_TEAMS WHERE WC_ID =" + wcYear + ") GROUP BY CLUBNAME) c;");
  while (resultSet.next()) {
	  playerscount = Integer.toString(resultSet.getInt("PlayersCount"));
  }


} catch (SQLException e) {
 // TODO Auto-generated catch block
 e.printStackTrace();
 }
finally {
  try {
      if (con != null) {
          con.close();
      	System.out.println("Disconnected to MySQL server.");
      }
  } 
  catch(SQLException e) {
      System.err.println("Exception:" + e.getMessage());
  }
}

		return playerscount;
 }


public String insertworldcup(int wcYear,int wcYear2, String hc, String wc, String rc) {
	//String clubProducedPlayersInfo = "from Dao Impl class";
	
JDBCConnection jdbcConnection = new JDBCConnection();

Connection con = jdbcConnection.getConnnection();

try {	
	Statement statement = null;
	statement = con.createStatement();
  // Result set get the result of the SQL query
	 System.out.println("INSERT INTO worldcup (wc_year, wc_id, wc, hc, rc)\r\n" + 
		  		"  VALUES ("+wcYear+ "," + wcYear2 + ", " + wc + " , "  + hc + " , " + rc + ")");
  int resultSet = statement.executeUpdate("INSERT INTO worldcup (wc_year, wc_id, wc, hc, rc)\r\n" + 
  		"  VALUES ("+wcYear+ "," + wcYear2 + ", " + wc + " , "  + hc + " , " + rc + ")");
 
 


} catch (SQLException e) {
 // TODO Auto-generated catch block
 e.printStackTrace();
 }
finally {
  try {
      if (con != null) {
          con.close();
      	System.out.println("Disconnected to MySQL server.");
      }
  } 
  catch(SQLException e) {
      System.err.println("Exception:" + e.getMessage());
  }
}

		return "Entry added";
 }

public String updateworldcup() {
	//String clubProducedPlayersInfo = "from Dao Impl class";
	
JDBCConnection jdbcConnection = new JDBCConnection();

Connection con = jdbcConnection.getConnnection();

try {	
	Statement statement = null;
	statement = con.createStatement();
  
 
  int resultSet2 = statement.executeUpdate("update worldcup as wc, country as c set wc.first_runner_country_id = c.country_id\r\n" + 
  		"		 where wc.rc = c.country_name");
 int resutset3 =  statement.executeUpdate("update worldcup as wc, country as c set wc.host_country_id = c.country_id\r\n" + 
 						"where wc.hc = c.country_name");
 int resutset4 =  statement.executeUpdate("update worldcup as wc, country as c set wc.winning_country_id = c.country_id\r\n" + 
 		"where wc.wc = c.country_name");		 


} catch (SQLException e) {
 // TODO Auto-generated catch block
 e.printStackTrace();
 }
finally {
  try {
      if (con != null) {
          con.close();
      	System.out.println("Disconnected to MySQL server.");
      }
  } 
  catch(SQLException e) {
      System.err.println("Exception:" + e.getMessage());
  }
}

		return "Entry added";
 }

}