

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.swing.text.html.HTMLDocument.Iterator;

import org.apache.tomcat.util.descriptor.web.MultipartDef;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import main_app.DatabaseConnection;



/**
 * Servlet implementation class Addevent3
 */


@WebServlet("/Addevent3")
@MultipartConfig(fileSizeThreshold = 1024 * 1024,
maxFileSize = 1024 * 1024 * 5, 
maxRequestSize = 1024 * 1024 * 5 * 5)
public class Addevent3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	    
    /**
     * 
     * @see HttpServlet#HttpServlet()
     */
    public Addevent3() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//each values are saved in session set attribute
		HttpSession session = request.getSession();
		
		session.setAttribute("age",request.getParameter("age"));
    	session.setAttribute("Type",request.getParameter("duration"));
    	session.setAttribute("support",request.getParameter("support"));
    	session.setAttribute("Extra",request.getParameter("hummansupport"));
    	
		
		
		request.getRequestDispatcher("addevent3.jsp").forward(request, response);	
		
		
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//again the input values of the previous form are settled into variables
		//
		  HttpSession session = request.getSession();
		String Title = (String) session.getAttribute("Title");
		String Name = (String) session.getAttribute("name");
		String Price = (String) session.getAttribute("Price");
		String Location = (String) session.getAttribute("Location");
		String Full = Location +"\n" +  Title +"\n"+ Price;
		
		try {
			Connection con = DatabaseConnection.initializeDatabase();
			//connection is created with the database
			//database object is created in DatabaseConnection.java
			//the sql server details are hardcodded implemented there
			//
			 PreparedStatement st = con
			 .prepareStatement("insert into events(username,title,location,Price) values(?,?,?,?)");
	            
	            st.setString(1,Name);
	            st.setString(2,Title);
	            st.setString(3,Location);
	            st.setInt(4,Integer.parseInt(Price));
	            
	            st.executeUpdate();
	            
	        
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
		//directed to /search to see the updated events
	    
		
	
	request.getRequestDispatcher("/home").forward(request, response);	
	}
}
    // Close all the connections
   

