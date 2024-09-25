package BloodBankProject;
import java.sql.*;
public class ConnectionProvider {
	
	public static Connection getCon()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:root@127.0.0.1:3306/local","root","rahul");
			return con;
					
		}
		catch(Exception e){
			System.out.println(e);
			return null;
		}
		
	}
	
	
}
