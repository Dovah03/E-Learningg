package controller;
import java.io.IOException;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
import org.emsi.pfa.model.LoginBean;
import org.emsi.pfa.model.UserBean;
import org.emsi.pfa.dao.LoginDao;
 
@WebServlet(urlPatterns = "/LoginServlet",loadOnStartup = 1)
public class LoginServlet extends HttpServlet {
private static final long serialVersionUID = 1L;
 
public LoginServlet() {
}
 
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
{
    String userName = request.getParameter("username");
    String password = request.getParameter("password");
    LoginBean loginBean = new LoginBean();
	UserBean User = new UserBean();

 
    loginBean.setUserName(userName);
    loginBean.setPassword(password);
 
    LoginDao loginDao = new LoginDao();
 
    try
    {
        String userValidate = loginDao.authenticateUser(loginBean);
    	UserBean SessionUser = loginDao.CreateUser(loginBean, User);

        if(userValidate.equals("Admin_Role"))
        {
            System.out.println("Admin's Home");
        
            HttpSession session = request.getSession(); //Creating a session
            session.setAttribute("userName", userName); //setting session attribute
            session.setAttribute("user", SessionUser);
            session.setMaxInactiveInterval(600);
            request.setAttribute("userName", userName);
            request.getRequestDispatcher("/Dashboard/AdminView.jsp").forward(request, response);
        }
        else if(userValidate.equals("Teacher_Role"))
        {
            System.out.println("Teacher's Home");
 
            HttpSession session = request.getSession();
            session.setAttribute("Editor", userName);
            session.setAttribute("user", SessionUser);
            session.setMaxInactiveInterval(600);
            request.setAttribute("userName", userName);
 
            request.getRequestDispatcher("/Dashboard/TeacherView.jsp").forward(request, response);
        }
        else if(userValidate.equals("Student_Role"))
        {
            System.out.println("Student's Home");
 
            HttpSession session = request.getSession();
            session.setMaxInactiveInterval(10*60);
            session.setAttribute("User", userName);
            session.setAttribute("user", SessionUser);
            request.setAttribute("userName", userName);
 
            request.getRequestDispatcher("/Dashboard/StudentView.jsp").forward(request, response);
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
