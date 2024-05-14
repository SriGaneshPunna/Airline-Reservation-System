package airline;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class DbUtill {
	public static Connection con;
	public static Statement st ;
	public  static void Connect()
	{
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		 con= DriverManager.getConnection("jdbc:mysql://localhost:3306/airlinereservation","root","gan123");
		 st=con.createStatement();

	}
	catch( Exception e)
	{
		
	}
	}
}
