package isd;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;

public class WorkEx{
	private int wid;
	private String title;
	private String domain;
	private String company_name;
	private String location;
	private Date start_date;
	private Date end_date;
	Alumini a;
	
	public void setAttr(int wid)
	{
		this.wid=wid;
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
		
		a=new Alumini();

		Connection connection = null;
		Statement statement;
		ResultSet rs=null;
		
		try {
			connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
			statement = connection.createStatement();

			String sql="select name,job_title, location, domain, company_name, start_date, end_date from alumini, work_experience where alumini.aid = work_experience.alumini and w_id ="+wid+";";
			rs=statement.executeQuery(sql);
			if(rs.next())
			{
				title=rs.getString("job_title");
				location=rs.getString("location");
				domain=rs.getString("domain");
				company_name=rs.getString("company_name");
				start_date=rs.getDate("start_date");
				end_date=rs.getDate("end_date");
				a.setAttr(rs.getString("name"));
			}
			connection.close();
		}catch (Exception e) {
		e.printStackTrace();}
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
	
	public int getWid() {
		return wid;
	}
	
	public String getTitle() {
		return title;
	}
	
	public String getLocation() {
		return location;
	}
	
	public String getDomain() {
		return domain;
	}
	
	public String getCompanyName() {
		return company_name;
	}
	
	public Date getStartDate() {
		return start_date;
	}
	
	public Date getEndDate() {
		return end_date;
	}
	
	public void updateTitle(String title)
	{
		String sql="update work_experience set job_title='"+title+"' where w_id="+wid+";";
		System.out.println("wid="+wid);
		Conn(sql);
	}
	
	public void updateCompany(String company)
	{
		String sql="update work_experience set company_name='"+company+"' where w_id="+wid+";";
		Conn(sql);
	}
	
	public void updateDomain(String domain)
	{
		String sql="update work_experience set domain='"+domain+"' where w_id="+wid+";";
		System.out.println("wid="+wid);
		Conn(sql);
	}
	
	public void updateLocation(String location)
	{
		String sql="update work_experience set location='"+location+"' where w_id="+wid+";";
		Conn(sql);
	}
	
	public void updateSDate(String sd)
	{
		String sql="update work_experience set start_date='"+sd+"' where w_id="+wid+";";
		Conn(sql);
	}
	
	public void updateEDate(String ed)
	{
		String sql="update work_experience set end_date='"+ed+"' where w_id="+wid+";";
		Conn(sql);
	}
}
