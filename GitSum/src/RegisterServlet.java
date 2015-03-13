

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
 * @see HttpServlet#HttpServlet()
 */
	public RegisterServlet() {
    super();
    // TODO Auto-generated constructor stub
	}

/**
 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// TODO Auto-generated method stub
	}

/**
 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=null;
		String pswrd=null;
		String email=null;
		String cpswrd=null;	
		name =(String)request.getParameter("username");
		pswrd =(String)request.getParameter("password");
		email=(String)request.getParameter("email");
		cpswrd =(String)request.getParameter("cpassword");
		
		System.out.println(name + pswrd+cpswrd +email);
	
		if(name==null||pswrd==null||cpswrd==null||email==null||
				name==""||pswrd==""||email==""||
				cpswrd==""||!(pswrd.equals(cpswrd)))
		{
					response.sendRedirect("Register.jsp");
		}
		else{
			
			try {
			DataBaseConnection.registerUser(name, pswrd);
			}
			catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			} 
			catch (SQLException e) {
			// TODO Auto-generated catch block
				e.printStackTrace();
			}
			response.sendRedirect("Login.jsp");

		}
		
	}
}
