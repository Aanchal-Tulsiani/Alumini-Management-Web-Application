package isd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Chapter {
	int c_id;
	String location;
	int no_of_alumini;
	
	public void setAttr(int c_id)
	{
		this.c_id=c_id;
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
		Statement statement,st1 = null;
		ResultSet rs=null;
		
		try {
			connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
			statement = connection.createStatement();
			st1 = connection.createStatement();

			String sql="select location, no_of_alumini chapter where c_id ="+c_id+";";
			rs=statement.executeQuery(sql);
			while(rs.next())
			{
				no_of_alumini=rs.getInt("no_of_alumini");
				location=rs.getString("location");
							
			}
			connection.close();
		}catch (Exception e) {
		e.printStackTrace();}
	}
	
	public String getLocation()
	{
		return location;
	}
	public int getNoA()
	{
		return no_of_alumini;
	}
}
