package org.emsi.pfa.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class TablesViewDAO {
	public ResultSet TablesFormateur() throws SQLException 
	{
		
	
	
		Connection con = null;
    	Statement statement = null;
    	ResultSet resultSet = null;

			
		try
		{
			con = DBConnection.createConnection();
			statement = con.createStatement();
			resultSet = statement.executeQuery("select id_util,name,pseudo,username,password,email,roles,tel,address,profile_picture,description,etablissement from users");
			return resultSet;
		}
		 catch(SQLException e)
	    {
	        e.printStackTrace();
	    }
		return resultSet;

	}
}
