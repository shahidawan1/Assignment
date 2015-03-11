

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(description="Login servlet", urlPatterns={"/LoginServlet"})
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
        System.out.println("This is inside the constructor");
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try
		{
			String name1=null;
			String pwd=null;
			
			name1 =  request.getParameter("username");
			pwd =  request.getParameter("password");
			
			
		     if (DataBaseConnection.validateUser(name1, pwd)==0)
		     {
		    	 HttpSession session = request.getSession(true);	    
		          session.setAttribute("currentSessionUser",request.getParameter("username")); 
		     //     response.sendRedirect("main.jsp");      		
		          RequestDispatcher rd=request.getRequestDispatcher("main.jsp");  
			         rd.forward(request, response);

		     }
			        
		     else
		     { 
		    	 RequestDispatcher rd=request.getRequestDispatcher("invaliduser.jsp");  
	         rd.forward(request, response); }
				
		}		
		catch (Throwable theException) 	    
		{
		     System.out.println(theException); 
		}
	}

}
