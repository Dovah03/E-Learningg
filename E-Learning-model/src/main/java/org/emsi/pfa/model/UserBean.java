package org.emsi.pfa.model;

public class UserBean{
	private int Id;
	private String UrlPhoto;
	private String Etablissement;
	private String userName;
	private String pseudo;
    private String role;
    private String email;
    private String Fullname;
    private String Description;
    private String Tel;
    private String Address;
 
    public String getUserName() {
    return userName;
    }
    public void setUserName(String userName) {
    	this.userName = userName;
    }
    public String getPseudo() {
        return pseudo;
    }
    public void setPseudo(String pseudo) {
        this.pseudo = pseudo;
    }
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFullName() {
		return Fullname;
	}
	public void setFullName(String Fullname) {
		this.Fullname = Fullname;
	}
	public UserBean(){	
	}
	public UserBean(UserBean User) {
		this.Id = User.Id;
		this.UrlPhoto = User.UrlPhoto;
		this.Etablissement = User.Etablissement;
		this.userName = User.userName;
		this.pseudo = User.pseudo;
		this.role = User.role;
		this.email = User.email;
		this.Fullname = User.Fullname;
		this.Description = User.Description;
		this.Address = User.Address;
		this.Tel = User.Tel;
	}
	public UserBean(String userName,String role, String Fullname, String pseudo, String email) {
		this.userName = userName;
		this.Fullname = Fullname;
		this.role = role;
		this.pseudo = pseudo;
		this.email = email;
	}
	public UserBean(String urlPhoto, String etablissement, String userName, String pseudo, String role, String email,
			String fullname, String description) {
		UrlPhoto = urlPhoto;
		Etablissement = etablissement;
		this.userName = userName;
		this.pseudo = pseudo;
		this.role = role;
		this.email = email;
		Fullname = fullname;
		Description = description;
	}
	
	public UserBean(int id,String urlPhoto, String etablissement, String userName, String pseudo, String role, String email,
			String fullname, String description, String Tel, String address) {
		this.Id = id;
		UrlPhoto = urlPhoto;
		Etablissement = etablissement;
		this.userName = userName;
		this.pseudo = pseudo;
		this.role = role;
		this.email = email;
		Fullname = fullname;
		Description = description;
		this.Tel = Tel;
		Address = address;
	}
	public String getUrlPhoto() {
		return UrlPhoto;
	}
	public void setUrlPhoto(String urlPhoto) {
		UrlPhoto = urlPhoto;
	}
	public String getEtablissement() {
		return Etablissement;
	}
	public void setEtablissement(String etablissement) {
		Etablissement = etablissement;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public String getTel() {
		return Tel;
	}
	public void setTel(String tel) {
		Tel = tel;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	};
}


