package isd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class Extra {
	public ArrayList<Integer> displayChapters()
	{
		ArrayList<Integer> ar=new ArrayList<Integer>();
		String driverName = "com.mysql.jdbc.Driver";
		String connectionUrl = "jdbc:mysql://localhost:3306/";
		String dbName = "alumini";
		String userId = "root";
		String password = "ayushi1799";
	    try {
	    Class.forName(driverName);
	    } catch (ClassNotFoundException e) {
	    e.printStackTrace();
	    }

	    Connection connection = null;
	    Statement st1= null;
	    ResultSet resultSet1;
	    try{
	    connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
	    st1=connection.createStatement();

	    String sql1="select c_id from chapter";
	    resultSet1=st1.executeQuery(sql1);

	    while(resultSet1.next()){
	    	ar.add(resultSet1.getInt("c_id"));
	    }
	      
	        connection.close();
	      } catch (Exception e) {
	        e.printStackTrace();
	      }
		return ar;
	}
}
