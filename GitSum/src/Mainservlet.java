

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Mainservlet
 */
@WebServlet("/Mainservlet")
public class Mainservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mainservlet() {
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

		// TODO Auto-generated method stub
		if (request.getParameter("java") != null) {
			System.out.println("java  function`");
           
        } else if (request.getParameter("javascript") != null) {

        } else if (request.getParameter("CSS") != null) {

        } 
        else if (request.getParameter("shell") != null) {
           
        } else if (request.getParameter("Ruby") != null) {
                   }
        else if (request.getParameter("Python") != null) {
         } 
         else if (request.getParameter("cpp") != null) { 
        } 
         else if (request.getParameter("c") != null) {

        }
	}

}
