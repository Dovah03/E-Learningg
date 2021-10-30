package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.emsi.pfa.model.UserBean;
import org.emsi.pfa.dao.UpdateProfileDAO;

/**
 * Servlet implementation class ProfileServlet
 */
@WebServlet(description = "gere la màj du profile", urlPatterns = { "/ProfileServlet" })
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public ProfileServlet() {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 	String UrlPhoto = request.getParameter("UrlPhoto");
		    String Etablissement = request.getParameter("Etablissement");
		    String Pseudo = request.getParameter("Pseudo");
		    String FullName = request.getParameter("FullName");
		    String Description = request.getParameter("Description");
		    
		    UserBean OldUser = (UserBean) request.getSession().getAttribute("user");
		    System.out.println("Old Id: "+OldUser.getId());
			UserBean NewUser = new UserBean(OldUser);
			
			if(!UrlPhoto.isBlank()) 
			{NewUser.setUrlPhoto(UrlPhoto);}
			if(!Etablissement.isBlank()) 
			{NewUser.setEtablissement(Etablissement);}
			if(!Pseudo.isBlank()) 
			{NewUser.setPseudo(Pseudo);}
			if(!FullName.isBlank()) 
			{NewUser.setFullName(FullName);}
			if(!Description.isBlank()) 
			{NewUser.setDescription(Description);}
		 
			UpdateProfileDAO UserDao = new UpdateProfileDAO();
		    System.out.println("New Id: "+NewUser.getId());

		   
		   try
		    {
		        String userValidate = UserDao.UpdateProfile(NewUser);
		 
		        if(userValidate.equals("Data Update success"))
		        {
		            System.out.println("Data Update success refresh page plz");
		            HttpSession session = request.getSession();
		            session.setAttribute("user", NewUser);
		            if (NewUser.getRole().equals("Admin"))
		            		request.getRequestDispatcher("Dashboard/Profile.jsp").forward(request, response);
		            else if (NewUser.getRole().equals("Enseignant"))
		            	request.getRequestDispatcher("Dashboard/Profile2.jsp").forward(request, response);
		            else if (NewUser.getRole().equals("Etudiant"))
		            	request.getRequestDispatcher("Dashboard/Profile3.jsp").forward(request, response);
		            
		        }
		        
		        
		        else
		        {
		            System.out.println("Error message = "+userValidate);
		            request.setAttribute("errMessage", userValidate);
		            request.getRequestDispatcher("/JSP/ErrorPage.jsp").forward(request, response);
		        }
		    }
		    catch (IOException e1)
		    {
		        e1.printStackTrace();
		    }
		    catch (Exception e2)
		    {
		        e2.printStackTrace();
		    }
		} //End of doPost()
		
	
	}


