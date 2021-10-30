package org.emsi.pfa.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.emsi.pfa.model.FormationBean;
 
public class AddFormationDao {
 
public String AddFormation(FormationBean FormationBean) throws SQLException
{	
    String TitreForm = FormationBean.getTitreForm();
    String NomProf = FormationBean.getNomEnseignant();
    String Niveau = FormationBean.getNiveau();
    String datecreation = FormationBean.getDateCreation();
    String comment = FormationBean.getComment();
 
    Connection con = null;
    PreparedStatement statement = null;
    
 
    String sql = "insert into formation (titre_formation,nom_formateur,niveau,date_creation,description) values (?,?,?,?,?);";
    try
    {
        con = DBConnection.createConnection();
        statement = con.prepareStatement(sql);
        statement.setString(1, TitreForm);
        statement.setString(2, NomProf);
        statement.setString(3, Niveau);
        statement.setString(4, datecreation);
        statement.setString(5, comment);
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
    return "l'objet formation n'as pas pue être créer veuillez réesseyer ";
}
}