

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import main_app.DatabaseConnection;
/**
 * Servlet implementation class login_form
 */
@WebServlet("/login_form")
public class login_form extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login_form() {
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
		 try{  
		    	String username = request.getParameter("fname");
		    	String Password = request.getParameter("pass");
		    	String Email = request.getParameter("email");
		    	String lastname = request.getParameter("lname");
		    	String Phone = request.getParameter("phone");
		    	//when the user is passed the values a new txt file is created 
		    	//txt file name is the users name 
		    	//inside the txt file users password is included..
		    	
		    	Connection con = DatabaseConnection.initializeDatabase();
		    	  
	            // Create a SQL query to insert data into demo table
	            // demo table consists of two columns, so two '?' is used
	            PreparedStatement st = con
	                   .prepareStatement("insert into users(username,LastName,Phone,Email,password) values(?,?,?,?,?)");
	            
	            st.setString(1,username);
	            st.setString(2,lastname);
	            st.setInt(3,Integer.parseInt(Phone));
	            st.setString(4,Email);
	            st.setNString(5, Password);
	            st.executeUpdate();
	            
	            // Close all the connections
	            st.close();
	            con.close();
	            
	            
		    	HttpSession session = request.getSession();
		        String id = session.getId();
		        response.setContentType("text/html");  
		        PrintWriter out = response.getWriter();  
		       
		        
		   
		        //creating form that have invisible hiddenform 
		        //when the user presses the go button
		        //hidden form will redirect to myprofile url
		        //hidden form method is used purely for showing the method 
		        //invisible textfield is created for the purpose keeping users details
		        out.print("<form action='myprofile' method='post'>");  
		        out.print("<input type='hidden' name='name' value='"+username+"'>");
		        out.print("<input type='hidden' name='pass' value='"+Password+"'>");  
		        out.print("<input type='hidden' name='email' value='"+Email+"'>");  
		        out.print("<input type='hidden' name='lname' value='"+lastname+"'>");  
		        out.print("<input type='hidden' name='phone' value='"+Phone+"'>");  
		        out.print("<input type='submit' value='go'>");  
		        out.print("</form>");  
		        out.close();  
		  
		                }catch(Exception e){System.out.println(e);}  
	}
	}


