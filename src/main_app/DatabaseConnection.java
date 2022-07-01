package main_app;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
	 public static Connection initializeDatabase()
		        throws SQLException, ClassNotFoundException
		    {
		        // Initialize all the information regarding
		        // Database Connection
		        String dbDriver = "com.mysql.jdbc.Driver"; //setting up drives
		        String dbURL = "jdbc:mysql:// localhost:3306/"; //telling the portnumber ofthe sql server
		        // Database name to access
		        String dbName = "website"; //schema
		        String dbUsername = "root"; //username
		        String dbPassword = "12345678"; //password
		   
		        Class.forName(dbDriver);  //connection is created with the appropriate database parameters
		        Connection con = DriverManager.getConnection(dbURL + dbName,
		                                                     dbUsername, 
		                                                     dbPassword);
		        return con;
		    }
		}

