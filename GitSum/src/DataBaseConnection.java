

import java.sql.*;

public class DataBaseConnection {
	
		static final String DB_URL = "jdbc:mysql://localhost/users";
		static final String USER = "root";
		static final String PASS = "123";
		static Connection conn = null;
		public static void connection() throws Exception{
			   try{
			      Class.forName("com.mysql.jdbc.Driver");
			      conn = DriverManager.getConnection(DB_URL, USER, PASS);
			   }
			   catch(SQLException se){
			      se.printStackTrace();
			   }
		}
		public static void main(String args[]){
			try {
				validateUser("jamil","123");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	public static boolean validateUser(String name, String pass) throws Exception{
		connection();
		Statement stmt = conn.createStatement();
	    ResultSet rs = stmt.executeQuery("SELECT * FROM usersrecords");
	    while(rs.next()){
	    	System.out.println("id "+rs.getString(1)+" id2: "+rs.getString(2));
	    	return true;
	    }
	    return false;
	    /*rs.last();
	    String username = rs.getString(1);
	    String password = rs.getString(2);
	    if(username.equals(name)&&password.equals(pass))	
	    	return true;
		else
			return false;*/
	}
}
