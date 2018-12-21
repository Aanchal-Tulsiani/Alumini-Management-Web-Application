package isd;

import isd.Event;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import isd.Alumini;

public class Registration {
	Alumini a=new Alumini();
	Event e=new Event();
	
	public Registration(String name, int eid)
	{
		a.setAttr(name);
		e.setAttr(eid);
	}
	
	public int registerEvent ()
	{
		//String id = request.getParameter("userId");
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
		
		try {
			connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
			statement = connection.createStatement();
			st1 = connection.createStatement();

			String sql="insert into participation values("+e.getEventId()+","+a.getAid()+");";
			statement.executeUpdate(sql);
			String sql1="update events set no_of_alumini=no_of_alumini+1 where e_id="+e.getEventId()+";";
			st1.executeUpdate(sql1);
			connection.close();
			return 1;
		}catch (Exception e) {
		e.printStackTrace();}
		return 0;
	}
}
