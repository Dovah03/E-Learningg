package controller;
import java.io.IOException;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.emsi.pfa.model.RegisterBean;
import org.emsi.pfa.dao.RegisterDao;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
private static final long serialVersionUID = 1L;
 
public RegisterServlet() {
}
 
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
{
    String userName = request.getParameter("username");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    String role = request.getParameter("select");
    String name = request.getParameter("name");
    String pseudo = request.getParameter("pseudo");
 
    RegisterBean RegisterBean = new RegisterBean();
 
    RegisterBean.setUserName(userName);
    RegisterBean.setPassword(password);
    RegisterBean.setEmail(email);
    RegisterBean.setRole(role);
    RegisterBean.setName(name);
    RegisterBean.setPseudo(pseudo);
 
    RegisterDao RegisterDao = new RegisterDao();
 
    try
    {
        String userValidate = RegisterDao.RegisterUser(RegisterBean);
 
        if(userValidate.equals("Data insertion success"))
        {
            System.out.println("Data insertion success login plz");

 
            request.getRequestDispatcher("/Login.jsp").forward(request, response);
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
