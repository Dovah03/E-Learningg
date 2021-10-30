package org.emsi.pfa.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.emsi.pfa.model.UserBean;


public class DeleteUserDao {

	public String DeleteUser(UserBean User) throws SQLException
	{
		int id = User.getId();
		
		Connection con = null ;
		PreparedStatement ps = null;
		
		String sql = "delete from users where (`id_util` = ?);";
		
		try
	    {
	        con = DBConnection.createConnection();
	        ps = con.prepareStatement(sql);
	        ps.setInt(1, id);
	        ps.executeUpdate();
	        
	        return "Data deletion success";
	    }
	    catch(SQLException e)
	    {
	        e.printStackTrace();
	    }
	    finally{
	        //close all resources here
	        ps.close();
	        con.close();
	    }
	    return "Data deletion fail";
	}
	
}
