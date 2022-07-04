package connection;
import java.sql.*;

public class ConnectionString {
	static Connection con=null;
	//single connection object for whole application since we used static
	static{
//		try{
//			//we can use provider object properties because we statically imported Provider object
//			con=DriverManager.getConnection(CONNECTION_URL,USERNAME,PASSWORD);
//			}catch(Exception e){
//				e.printStackTrace();
//			}
            try {
			Class.forName("com.mysql.cj.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tourism", "akd", "helloakd");
		 } catch ( ClassNotFoundException | SQLException e ) {
			System.err.println(e.getClass().getName()+ "Failed here" + ": " + e.getMessage() );
		 }
	}
	//returns already existing connection object
	public static Connection getCon(){
		return con;
	}
}