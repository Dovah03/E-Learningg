package org.emsi.pfa.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import org.emsi.pfa.model.UserBean;
import org.emsi.pfa.dao.DBConnection;
	 
	public class UpdateProfileDAO {
	 
	public String UpdateProfile(UserBean NewUser)
	{	
		int Id = NewUser.getId();
		String NewUrlPhoto = NewUser.getUrlPhoto();
	    String StoredUrlPhoto = NewUrlPhoto.replaceAll("\\\\", "\\\\\\\\");

		String NewEtablissement = NewUser.getEtablissement();
	    String NewPseudo = NewUser.getPseudo();
	    String NewFullname = NewUser.getFullName();
	    String NewDescription = NewUser.getDescription();
	    
	    Connection con = null;
	    PreparedStatement statement = null;
	    
	   
	 
	    String sql = "UPDATE users SET name = ?, pseudo = ?, profile_picture = ?, description = ?, etablissement = ? WHERE  (`id_util` = ?);";
	    try
	    {
	        con = DBConnection.createConnection();
	        statement = con.prepareStatement(sql);
	        statement.setString(1, NewFullname);
	        statement.setString(2, NewPseudo);
	        statement.setString(3, StoredUrlPhoto);
	        statement.setString(4, NewDescription);
	        statement.setString(5, NewEtablissement);
	        statement.setInt(6, Id);
	        statement.executeUpdate();
	        
	        return "Data Update success";
	    }
	    catch(SQLException e)
	    {
	        e.printStackTrace();
	    }
	    return "Update failed";
	}
	public String UpdateProfile2(UserBean NewUser) throws SQLException
	{	
		int Id = NewUser.getId();
		String NewTel = NewUser.getTel();
		String NewAddress = NewUser.getAddress();
	    String NewEmail = NewUser.getEmail();
	    
	    
	 
	    Connection con = null;
	    PreparedStatement statement = null;
	    
	 
	    String sql = "UPDATE users SET tel = ?, address = ?, email = ? WHERE  (`id_util` = ?);";
	    try
	    {
	        con = DBConnection.createConnection();
	        statement = con.prepareStatement(sql);
	        statement.setString(1, NewTel);
	        statement.setString(2, NewAddress);
	        statement.setString(3, NewEmail);
	        statement.setInt(4, Id);
	        statement.executeUpdate();
	        
	        return "Data Update success";
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
	    return "Update failed";
	}
	}

