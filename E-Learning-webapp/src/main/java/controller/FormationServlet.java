package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.emsi.pfa.business.AddFormationMetier;
import org.emsi.pfa.model.FormationBean;

/**
 * Servlet implementation class FormationServlet
 */
@WebServlet(description = "gere les la creation de la formation", urlPatterns = { "/FormationServlet" })
public class FormationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String TitreForm = request.getParameter("nameFormation");
		String NomEnseignant = request.getParameter("nameProf");
		String niveau = request.getParameter("niveau");
		String dateCreation = request.getParameter("date");
		String Comment = request.getParameter("comment");
		
		FormationBean FormationBean = new FormationBean(TitreForm, NomEnseignant, niveau, dateCreation, Comment);
		
		AddFormationMetier addFormation = new AddFormationMetier();
		 try
		    {
		        String FormationValidate = addFormation.AddFormValidate(FormationBean);
		 
		        if(FormationValidate.equals("Data insertion success"))
		        {
		            System.out.println("Data insertion success Formation Object created");

		 
		            request.getRequestDispatcher("/Dashboard/AddFormation.jsp").forward(request, response);
		        }
		        
		        
		        else
		        {
		            System.out.println("Error message = "+FormationValidate);
		            request.setAttribute("errMessage", FormationValidate);
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