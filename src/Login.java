

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.RandomAccessFile;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Scanner;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;

import main_app.DatabaseConnection;
import main_app.events;
import main_app.user;
import main_app.privilege;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;


/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
    	String Password = request.getParameter("password");
    	String username = (String) session.getAttribute("name"); 
    	
      
    	if (username != null) {
		

		request.getRequestDispatcher("Myprofile.jsp").forward(request, response);
    	}
    	else {
    		
    		request.getRequestDispatcher("Login_page.jsp").forward(request, response);
    		
    	};
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
    	HttpSession session = request.getSession();
    	// other user related informations will be fetched from database
    	
    	
			
					 try {
						String username = request.getParameter("name");
				    	String Password = request.getParameter("password");
						
				    	  Connection con;
								con = DatabaseConnection.initializeDatabase();
							
						
						  
							
				            PreparedStatement st = con.prepareStatement("SELECT * FROM users WHERE username=? AND password =?");  
						    st.setString(1, username);
						
					    
						st.setString(2, Password);
					
		            
		            
		            ResultSet rs = st.executeQuery();  
		            if(rs.next()) {
		            	//String userinfo = "SELECT * FROM users WHERE username = ? password = ?";
		            	
		            	session.setAttribute("name", username);
		        		session.setAttribute("pass", Password); 
		        		
		                // redirect or print but not both...
		            	request.getRequestDispatcher("Myprofile.jsp").forward(request, response);
		                // response.sendRedirect("index_true.jsp");
		   	
		            
					
					
						
						
						
					
	
					
				    
						
					
					
				}} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}   
		           
		    			
		            	System.out.println(request.getParameter("name"));
		            	String Disclaimer = "Your either Password or Username wrong";
		            	request.setAttribute("Disclaimer", Disclaimer);
		            	request.getRequestDispatcher("Login_page.jsp").forward(request, response);
		            	
		            	
		               
						
						
						
		           
				
	            
	            
				
	          
    	
        	//for demonstration purposes successfull logins will have cookie that lasts one hour
        	
					
    	
     
		
						
    	}
	
    	
			

	private RequestDispatcher getRequestDispatcher(String string) {
		// TODO Auto-generated method stub
		return null;
	}

}
