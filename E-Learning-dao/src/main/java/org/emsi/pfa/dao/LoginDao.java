package org.emsi.pfa.dao;
 
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
 
import org.emsi.pfa.model.LoginBean;
import org.emsi.pfa.model.UserBean;
import org.emsi.pfa.dao.DBConnection;
 
public class LoginDao {
	public UserBean CreateUser(LoginBean loginBean, UserBean User) throws SQLException
	{

		
	    String userName = loginBean.getUserName();
	    String password = loginBean.getPassword();
	 
	    Connection con = null;
	    Statement statement = null;
	    ResultSet resultSet = null;
	    
	    int idDB ;
	    String userNameDB = "";
	    String NameDB = "";
	    String passwordDB = "";
	    String roleDB = "";
	    String emailDB = "";
	    String pseudoDB = "";
	    String telDB ;
	    String adressDB = "";
	    String profilePicDB ="";
	    String descriptionDB = "";
	    String etablissementDB = "";
	    
	    try
	    {
	        con = DBConnection.createConnection();
	        statement = con.createStatement();
	        resultSet = statement.executeQuery("select id_util,name,pseudo,username,password,email,roles,tel,address,profile_picture,description,etablissement from users");
	 
	        while(resultSet.next())
	        {
	        	idDB = resultSet.getInt("id_util");
	            userNameDB = resultSet.getString("username");
	            NameDB = resultSet.getString("name");
	            passwordDB = resultSet.getString("password");
	            roleDB = resultSet.getString("roles");
	            emailDB = resultSet.getString("email");
	            pseudoDB = resultSet.getString("pseudo");
	            telDB = resultSet.getString("tel");
	            adressDB = resultSet.getString("address");
	            profilePicDB = resultSet.getString("profile_picture");
	            descriptionDB = resultSet.getString("description");
	            etablissementDB = resultSet.getString("etablissement");
	 
	            if(userName.equals(userNameDB) && password.equals(passwordDB) ) {
	            	System.out.println("id: "+idDB);
	        		User = new UserBean(idDB, profilePicDB, etablissementDB, userNameDB, pseudoDB, roleDB, emailDB, NameDB, descriptionDB, telDB, adressDB);
	        		System.out.println("UrlPhoto: "+ User.getUrlPhoto());
	        		return User;
	        		
	            }
	        }
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
	    return User;
	}
	  
	

 
public String authenticateUser(LoginBean loginBean) throws SQLException
{	

	
    String userName = loginBean.getUserName();
    String password = loginBean.getPassword();
 
    Connection con = null;
    Statement statement = null;
    ResultSet resultSet = null;
 
    String userNameDB = "";
    String passwordDB = "";
    String roleDB = "";
    try
    {
        con = DBConnection.createConnection();
        statement = con.createStatement();
        resultSet = statement.executeQuery("select name,pseudo,username,password,email,roles from users");
 
        while(resultSet.next())
        {
            userNameDB = resultSet.getString("username");
            passwordDB = resultSet.getString("password");
            roleDB = resultSet.getString("roles");
            if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("Admin")) {
            	return "Admin_Role";
            }
            else if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("Enseignant")) {
           	 	return "Teacher_Role";
            }
            else if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("Etudiant")) {
           	 	return "Student_Role";
            }
        }
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
    return "Nom d'ultilisateur ou Mot de passe incorrect , veuillez r�essayer";
}
}