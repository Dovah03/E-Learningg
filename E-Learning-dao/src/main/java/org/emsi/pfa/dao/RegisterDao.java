package org.emsi.pfa.dao;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.SQLException;
 
import org.emsi.pfa.model.RegisterBean;
import org.emsi.pfa.dao.DBConnection;
 
public class RegisterDao {
 
public String RegisterUser(RegisterBean RegisterBean) throws SQLException
{
    String userName = RegisterBean.getUserName();
    String password = RegisterBean.getPassword();
    String role = RegisterBean.getRole();
    String email = RegisterBean.getEmail();
    String name = RegisterBean.getName();
    String pseudo = RegisterBean.getPseudo();
 
    Connection con = null;
    PreparedStatement statement = null;
    
 
    String sql = "insert into users(name,pseudo,username,password,email,roles) values(?,?,?,?,?,?)";
    try
    {
        con = DBConnection.createConnection();
        statement = con.prepareStatement(sql);
        statement.setString(1, name);
        statement.setString(2, pseudo);
        statement.setString(3, userName);
        statement.setString(4, password);
        statement.setString(5, email);
        statement.setString(6, role);
        statement.executeUpdate();
        
        return "Data insertion success";
    }
    catch(SQLException e)
    {
        e.printStackTrace();
    }
    finally{
        //close all resources here
        statement.close();
        con.close();
    }
    return "Invalid user credentials";
}
}