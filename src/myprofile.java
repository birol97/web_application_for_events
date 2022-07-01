

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import main_app.DatabaseConnection;
import main_app.events;
import main_app.user;

/**
 * Servlet implementation class myprofile
 */
@WebServlet("/myprofile")
public class myprofile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public myprofile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("Myprofile.jsp").forward(request, response);
	}
	        
	        
	
	
		
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  response.setContentType("text/html");  
		    PrintWriter out = response.getWriter();  
		      
		    Cookie ck[]=request.getCookies();  
		    out.print("Hello "+ck[0].getValue());  
		//received hiddenform details turn into http session attribute
	    //session attributes are better way to keep values
		//no implementation of hidden form is required on everypage
		//after refreshing the page still the attributes will be remain same
		String name =request.getParameter("name");
		String pass =request.getParameter("pass");
		String email =request.getParameter("email");
		String lname =request.getParameter("lname");
		String phone =request.getParameter("phone");
		HttpSession session = request.getSession();
		session.setAttribute("name", name);
		session.setAttribute("pass", pass);
		session.setAttribute("email", email);
		session.setAttribute("lname", lname);
		session.setAttribute("phone", phone);
        String id = session.getId();
        request.setAttribute("id", id);
		
		request.setAttribute("pass", pass);
		request.setAttribute("email", email);
		request.setAttribute("lname", lname);
		request.setAttribute("phone", phone);
		int number = Integer.parseInt(phone);
		//user object is created for making the myprofile page dynamic
		user xx = new user(name,pass,email,number);
	    request.setAttribute("user_info", xx);
	    request.getSession().setAttribute("emp",xx);
	    
		
		ArrayList<events> results = new ArrayList<events>();
		Connection con;
		try {
			con = DatabaseConnection.initializeDatabase();
		
		String query = "SELECT * FROM events";
		 PreparedStatement st;
		
			st = con
			.prepareStatement(query);
		
		 
		 ResultSet rs = st.executeQuery(query);
            
	      while (rs.next())
	      {
	        
	    	  String FirstName = rs.getString("username");
		        String Title = rs.getString("title");
		        String location = rs.getString("location");
		        int price = rs.getInt("Price");
		        int event_id = rs.getInt("event_id");
		        
		     events   event1 = new events(Title, location,price,event_id);
		        results.add(event1);  
		      
		        
	           
	        
	       
	      }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 request.setAttribute("data", results);
		request.getRequestDispatcher("Myprofile.jsp").forward(request, response);	
		
	}
}
