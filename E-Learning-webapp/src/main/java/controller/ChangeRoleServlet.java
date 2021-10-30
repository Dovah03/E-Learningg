package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.emsi.pfa.dao.UpdateRoleDAO;

/**
 * Servlet implementation class ChangeRoleServlet
 */
@WebServlet("/ChangeRoleServlet")
public class ChangeRoleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangeRoleServlet() {}
        
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		System.out.println(id);
		int ID = Integer.parseInt(id);
		String Role = request.getParameter("Role");
		UpdateRoleDAO RoleDAO = new UpdateRoleDAO();
		 try
		    {
		        String userValidate = RoleDAO.UpdateRole(ID,Role);
		 
		        if(userValidate.equals("Data Update success"))
		        {
		            System.out.println("Data insertion success");

		 
		            request.getRequestDispatcher("/Dashboard/AdminTables.jsp").forward(request, response);
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
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
