package org.emsi.pfa.dao;
 
import java.sql.Connection;
import java.sql.DriverManager;
 
public class DBConnection {
 
    public static Connection createConnection()
    {
    Connection con = null;
    String property = "?zeroDateTimeBehavior=CONVERT_TO_NULL&serverTimezone=UTC";
    String url ="jdbc:mysql://localhost:3306/myjavadb"+property; //attribut ajouter au connection String afin de resoudre l'incompatibilit� des TimeZones
    String username = "Mehdi";
    String password = "Dovahkiin03";
    System.out.println(url + username + password);
    try
    {
       try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
        }
        catch (ClassNotFoundException e)
        {
            e.printStackTrace();
        }
        
    	
        con = DriverManager.getConnection(url, username, password);
        if (con != null) {
        System.out.println("Post establishing a DB connection - "+con);
        }
        else {System.out.println("cnx not made");}
    }
    catch (Exception e)
    {
        e.printStackTrace();
    }
    return con;
    }
}