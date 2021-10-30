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
 * Servlet implementation class ProfilServlet2
 */
@WebServlet(description = "gere le 2eme form", urlPatterns = { "/ProfileServlet2" })
public class ProfileServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
				 	String Tel = request.getParameter("phone");
				    String Address = request.getParameter("address");
				    String Email = request.getParameter("Email");
				   
				    
				    UserBean OldUser = (UserBean) request.getSession().getAttribute("user");
				    System.out.println("Old Id: "+OldUser.getId());
				    System.out.println("old Address: "+OldUser.getAddress());
					UserBean NewUser = new UserBean(OldUser);
					//code coté business
					if(!Tel.isBlank()) 
					{NewUser.setTel(Tel);}
					if(!Address.isBlank()) 
					{NewUser.setAddress(Address);}
					if(!Email.isBlank()) 
					{NewUser.setEmail(Email);}
					// code coté business
					UpdateProfileDAO UserDao = new UpdateProfileDAO();
				    System.out.println("New Id: "+NewUser.getId());
				    System.out.println("new Address: "+NewUser.getAddress());

				   
				   try
				    {
				        String userValidate = UserDao.UpdateProfile2(NewUser);
				 
				        if(userValidate.equals("Data Update success"))
				        {
				            System.out.println("Data Update success refresh page plz");
				            HttpSession session = request.getSession();
				            session.setAttribute("user", NewUser);
				            if(NewUser.getRole().equals("Admin"))
				            	request.getRequestDispatcher("Dashboard/Profile.jsp").forward(request, response);
				            
				            else if(NewUser.getRole().equals("Enseignant"))
				            	request.getRequestDispatcher("Dashboard/Profile2.jsp").forward(request, response);
				            
				            else if(NewUser.getRole().equals("Etudiant"))
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


