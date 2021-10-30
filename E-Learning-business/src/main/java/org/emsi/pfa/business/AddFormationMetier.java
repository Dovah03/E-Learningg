package org.emsi.pfa.business;
import org.emsi.pfa.model.FormationBean;

import java.sql.SQLException;

import org.emsi.pfa.dao.AddFormationDao;

public class AddFormationMetier {
	
	public String AddFormValidate(FormationBean Bean) {
		AddFormationDao FormationDao = new AddFormationDao();
		String Validation = null;
		try {
			Validation = FormationDao.AddFormation(Bean);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return Validation;
		
	}
}
