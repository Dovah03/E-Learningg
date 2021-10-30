package org.emsi.pfa.model;

import java.beans.Beans;

public class FormationBean extends Beans {
	private int Id;
	private String NomFormation;
	private String NomEnseignant;
	private String niveau;
	private String dateCreation;
	private String dateFormation;
	private String heureFormation;
	private String Durée;
	private String Comment;
	
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getTitreForm() {
		return NomFormation;
	}
	public void setTitreForm(String titreForm) {
		NomFormation = titreForm;
	}
	public String getNomEnseignant() {
		return NomEnseignant;
	}
	public void setNomEnseignant(String nomEnseignant) {
		NomEnseignant = nomEnseignant;
	}
	public String getNiveau() {
		return niveau;
	}
	public void setNiveau(String niveau) {
		this.niveau = niveau;
	}
	public String getDateCreation() {
		return dateCreation;
	}
	public void setDateCreation(String dateCreation) {
		this.dateCreation = dateCreation;
	}
	public String getDateFormation() {
		return dateFormation;
	}
	public void setDateFormation(String dateFormation) {
		this.dateFormation = dateFormation;
	}
	public String getHeureFormation() {
		return heureFormation;
	}
	public void setHeureFormation(String heureFormation) {
		this.heureFormation = heureFormation;
	}
	public String getDurée() {
		return Durée;
	}
	public void setDurée(String durée) {
		Durée = durée;
	}
	public String getComment() {
		return Comment;
	}
	public void setComment(String comment) {
		Comment = comment;
	}
	public FormationBean(String nomFormation, String nomEnseignant, String niveau, String dateCreation, String comment) {
		super();
		NomFormation = nomFormation;
		NomEnseignant = nomEnseignant;
		this.niveau = niveau;
		this.dateCreation = dateCreation;
		Comment = comment;
	}
	public FormationBean(int id, String nomFormation, String nomEnseignant, String niveau, String dateCreation,
			String dateFormation, String heureFormation, String durée, String comment) {
		super();
		Id = id;
		NomFormation = nomFormation;
		NomEnseignant = nomEnseignant;
		this.niveau = niveau;
		this.dateCreation = dateCreation;
		this.dateFormation = dateFormation;
		this.heureFormation = heureFormation;
		Durée = durée;
		Comment = comment;
	}
	public FormationBean(FormationBean CopyBean) {
		Id = CopyBean.Id;
		Id = CopyBean.Id;
		NomFormation = CopyBean.NomFormation;
		NomEnseignant = CopyBean.NomEnseignant;
		this.niveau = CopyBean.niveau;
		this.dateCreation = CopyBean.dateCreation;
		this.dateFormation = CopyBean.dateFormation;
		this.heureFormation = CopyBean.heureFormation;
		Durée = CopyBean.Durée;
		Comment = CopyBean.Comment;
		
	}
}
