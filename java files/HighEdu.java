package isd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;
import isd.Alumini;

public class HighEdu {
	private int hid;
	private String degree;
	private String university;
	private Date start_date;
	private Date end_date;
	Alumini a=new Alumini();

	public void setAttr(int hid) {
		this.hid = hid;
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
		Statement statement, st1 = null;
		ResultSet rs = null;

		try {
			connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
			statement = connection.createStatement();
			st1 = connection.createStatement();

			String sql = "select name,degree, university, start_date, end_date from higher_education, alumini where alumini.aid = higher_education.alumini and he_id="
					+ hid + ";";
			rs = statement.executeQuery(sql);
			while (rs.next()) {
				a.setAttr(rs.getString("name"));
				degree = rs.getString("degree");
				university = rs.getString("university");
				start_date = rs.getDate("start_date");
				end_date = rs.getDate("end_date");
			}
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void Conn(String sql)
	{
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
		
		try {
			connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
			statement = connection.createStatement();

			statement.executeUpdate(sql);
			connection.close();
		}catch (Exception e) {
		e.printStackTrace();}
	}

	public int getHid() {
		return hid;
	}

	public String getDegree() {
		return degree;
	}

	public String getUniversity() {
		return university;
	}

	public Date getStartDate() {
		return start_date;
	}

	public Date getEndDate() {
		return end_date;
	}
	
	public void updateDegree(String degree)
	{
		String sql="update higher_education set degree='"+degree+"' where he_id="+hid+";";
		Conn(sql);
	}
	
	public void updateUniversity(String university)
	{
		String sql="update higher_education set university='"+university+"' where he_id="+hid+";";
		Conn(sql);
	}
	
	public void updateS_Date(String start_date)
	{
		String sql="update higher_education set start_date='"+start_date+"' where he_id="+hid+";";
		Conn(sql);
	}
	
	public void updateE_Date(String end_date)
	{
		String sql="update higher_education set end_date='"+end_date+"' where he_id="+hid+";";
		Conn(sql);
	}
	
	
	
	
}
