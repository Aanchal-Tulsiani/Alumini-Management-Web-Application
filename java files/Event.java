package isd;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

public class Event {
	int event_id;
	String title;
	Date date;
	String type_of_event;
	String chapter;
	int no_of_alumini;
	String description;
	String jsp_path;
		
	int getEventId()
	{
		return event_id;
	}
	
	public void setAttr(int eid)
	{
		event_id=eid;
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
		Statement statement = null;
		ResultSet rs=null;
		
		try {
			connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
			statement = connection.createStatement();

			String sql="select title, date, type_of_event, location, events.no_of_alumini, description, jsp_path from events, chapter where events.chapter = chapter.c_id and e_id ="+eid+";";
			rs=statement.executeQuery(sql);
			while(rs.next())
			{
				title=rs.getString("title");
				date=rs.getDate("date");
				type_of_event=rs.getString("type_of_event");
				chapter=rs.getString("location");
				no_of_alumini=rs.getInt("no_of_alumini");
				description=rs.getString("description");
				jsp_path=rs.getString("jsp_path");
				
			}
			connection.close();
		}catch (Exception e) {
		e.printStackTrace();}
	}
	
	public String getTitle()
	{
		System.out.println("Title java="+title);
		return title;
		
	}
	
	public Date getDate()
	{	
		return date;
	}
	
	public String gettoe()
	{
		return type_of_event;
	}
	public int getnoa()
	{
		return no_of_alumini;
	}
	public String getDesc()
	{
		return description;
	}
	public String getjsp_path()
	{
		return jsp_path;
	}
	public String getChapter()
	{
		return chapter;
	}
	
}
