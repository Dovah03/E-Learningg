package org.emsi.pfa.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import org.emsi.pfa.dao.DBConnection;

public class UpdateRoleDAO {
	String sql ;
	Connection con = null;
    PreparedStatement statement = null;
	public String UpdateRole(int id,String Role) { 
	
    
    String sql = "UPDATE users SET roles = ? WHERE  (`id_util` = ?);";
    try
    {
        con = DBConnection.createConnection();
        statement = con.prepareStatement(sql);
        statement.setString(1, Role);
        statement.setInt(2, id);
        statement.executeUpdate();
        
        return "Data Update success";
    }
    catch(SQLException e)
    {
        e.printStackTrace();
    }
    return "Update failed";
}
}
