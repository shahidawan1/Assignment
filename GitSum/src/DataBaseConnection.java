
import java.sql.*;
public class DataBaseConnection {
	
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver"; 
	static final String DB_URL = "jdbc:mysql://localhost/users";
	
	static final String USER = "shan";
	static final String PASS = "123";

	public static void main(String[] args) throws ClassNotFoundException, SQLException {}
	
	public static void 	registerUser(String id1, String password1)throws ClassNotFoundException, SQLException{
		Connection conn = null; 
		Statement stmt = null;
	
		Class.forName("com.mysql.jdbc.Driver");
	
		System.out.println("Connecting to database..."); 
		conn = DriverManager.getConnection(DB_URL,USER,PASS);

		System.out.println("Creating statement...");
		//stmt = conn.createStatement();
		 PreparedStatement ps = conn.prepareStatement("insert into usersrecords(id,password) values (?,?)");
		 ps.setString(1,id1);
		 ps.setString(2,password1);
		 ps.executeUpdate();
		System.out.println("done");
		ps.close(); 
		//stmt.close();
		conn.close();
	}

	public static int validateUser(String id1, String password1)throws ClassNotFoundException, SQLException{
		Connection conn = null; 
		Statement stmt = null;
	
		Class.forName("com.mysql.jdbc.Driver");
	
		System.out.println("Connecting to database..."); 
		conn = DriverManager.getConnection(DB_URL,USER,PASS);

		System.out.println("Creating statement...");
		stmt = conn.createStatement();
		String sql; sql = "SELECT id, password FROM usersrecords";
		ResultSet rs = stmt.executeQuery(sql);
	
		int x=1;
		while(rs.next())
		{
			String id = rs.getString("id"); 
			String password = rs.getString("password");
			if (id1.equals(id))
			{	System.out.print("ID: " + id); 
				if(password1.equals(password)){
					System.out.println(",    password: " + password);x=0;}
			else
			{
				
				System.out.println("Invalid user");}
			}
			
		}
		rs.close(); 
		stmt.close();
		conn.close();
		return x;
		
						
	}
}