

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

/**
 * Servlet implementation class Addevent2
 */
@WebServlet("/Addevent2")
public class Addevent2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addevent2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//values that gathered from the form is saved as different session attributes
		
		HttpSession session = request.getSession();
	// get the form input values
    	session.setAttribute("Title",request.getParameter("Title"));
    	session.setAttribute("Type",request.getParameter("Type"));
    	session.setAttribute("Location",request.getParameter("Location"));
    	session.setAttribute("Price",request.getParameter("Price"));
    	session.setAttribute("Title", request.getParameter("Title"));
    	//sending request to the next page
    	request.getRequestDispatcher("addevent2.jsp").forward(request, response);	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
	}

}
