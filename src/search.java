

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import main_app.DatabaseConnection;
import main_app.DatabaseConnection;
import main_app.events;

/**
 * Servlet implementation class search
 */
@WebServlet("/search")
public class search extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public search() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		     	
		    
		
		
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
		        event1.seteventprice(price);
		        results.add(event1);  
		         
		      
		        
	      
	        
	       
	      }
	      
	     for(int i = 0;i <results.size()-1;i++) {
	    	 
	    	 
	    	  String query2 = "SELECT event_id FROM attendees WHERE = event_id ?";
		        PreparedStatement st1;
				
				st1 = con
				.prepareStatement(query2);
			
				st1.setInt(1, results.get(i).geteventid());
			    ResultSet rs1 = st1.executeQuery(query2);
		        
		        
		        int x = 0;
		        while(rs1.next())
		        {
		        	x++;
		        };
	    	     
		        results.get(i).setattendnumb(x);
	    	 
	     }; 
	      
	      
	      
	      
	      
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} 
		
		
		
		catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		
	      
	      
	      
	        request.setAttribute("data", results);
	        
	        
	        
	        // print the results
	   
	        
	        
	
	        

			
		
		
		
		request.getRequestDispatcher("events.jsp").forward(request, response);	
	
	}

	/**
	 * 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			 HttpSession session = request.getSession();
			int event_id = Integer.parseInt(request.getParameter("event_id"));
			
			String Name = (String) session.getAttribute("name");
			
			
			Connection con = DatabaseConnection.initializeDatabase();
			 PreparedStatement st = con
	                   .prepareStatement("insert into attendees(username,event_id) values(?,?)");
	            
			 st.setString(1, Name);
			 st.setInt(2, event_id);
			 st.executeUpdate();
	            
	            // Close all the connections
	            st.close();
	            con.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
		doGet(request,response);
		
	}

}
