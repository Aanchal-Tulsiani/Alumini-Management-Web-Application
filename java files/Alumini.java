package isd;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

public class Alumini {
	private int aid;
	private String name;
	private String pswd;
	 int yog;
	private Date dob;
	private String email;
	private String contact;
	private String address;
	private String chapter;
	private String u_name;
	
	public void setAttr(String name)
	{
		this.name=name;
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

			String sql="select u_name,location, aid, pswd, year_of_graduation, dob, mail_id, phone_no, address from alumini, chapter where alumini.c_id = chapter.c_id and name ='"+name+"';";
			rs=statement.executeQuery(sql);
			while(rs.next())
			{
				aid=rs.getInt("aid");
				pswd=rs.getString("pswd");
				yog=rs.getInt("year_of_graduation");
				dob=rs.getDate("dob");
				email=rs.getString("mail_id");
				contact=rs.getString("phone_no");
				address=rs.getString("address");
				chapter=rs.getString("location");
				u_name=rs.getString("u_name");
				
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
	
	public int getAid()
	{
		return aid;
	}
	
	public int getYog()
	{	
		return yog;
	}
	
	public String getpswd()
	{
		return pswd;
	}
	
	public String getuname()
	{
		return u_name;
	}
	
	public Date getdob()
	{
		return dob;
	}
	public String getEmail()
	{
		return email;
	}
	public String getContact()
	{
		return contact;
	}
	public String getAddress()
	{
		return address;
	}
	public String getChapter()
	{
		return chapter;
	}
	public void updateUName(String u_name)
	{
		String sql="update alumini set u_name='"+u_name+"' where aid="+aid+";";
		Conn(sql);
	}
	public void updatePass(String new_pass)
	{
		String sql="update alumini set pswd='"+new_pass+"' where aid="+aid+";";
		Conn(sql);
	}
	public void updateDoB(String dob)
	{
		String sql="update alumini set dob='"+dob+"' where aid="+aid+";";
		Conn(sql);
	}
	public void updateYoG(int year)
	{
		String sql="update alumini set year_of_graduation="+year+" where aid="+aid+";";
		Conn(sql);
	}
	public void updateEmail(String email)
	{
		String sql="update alumini set mail_id='"+email+"' where aid="+aid+";";
		Conn(sql);
	}
	public void updateContact(String contact)
	{
		String sql="update alumini set phone_no='"+contact+"' where aid="+aid+";";
		Conn(sql);
	}
	public void updateAdd(String add)
	{
		String sql="update alumini set address='"+add+"' where aid="+aid+";";
		Conn(sql);
	}
	public int updateChapter(String chapter)
	{
		int c_id=0;
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

			rs=statement.executeQuery("select c_id from chapter where location='"+chapter+"';");
			if(rs.next())
				c_id=rs.getInt("c_id");
			else {
				return 1;
			}
			connection.close();
		}catch (Exception e) {
		e.printStackTrace();}
		
		String sql="update alumini set c_id='"+c_id+"' where aid="+aid+";";
		Conn(sql);
		return 0;
	}

	public int addWorkExp(String name, String job_title, String location, String domain, String company, String s_date, String e_date)
	{
		int w_id=0;
		int c=0;
		
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

		Connection conn = null;
		Statement stmt = null;
		Statement stmt2=null;
		
		try{  
			conn = DriverManager.getConnection(connectionUrl + dbName, userId, password);
			stmt = conn.createStatement();
			stmt2 = conn.createStatement();
			
			ResultSet ryy=stmt.executeQuery("SELECT w_id FROM work_experience ORDER BY w_id DESC LIMIT 1 ");
			if(ryy.next()) 
			{
		    	w_id=ryy.getInt("w_id")+1;
			}
			
			if(e_date.equals(""))
				c=stmt2.executeUpdate("insert into work_experience values('"+job_title+"','"+location+"','"+domain+"','"+company+"','"+s_date+"',null,"+aid+","+w_id+");");
			else
				c=stmt2.executeUpdate("insert into work_experience values('"+job_title+"','"+location+"','"+domain+"','"+company+"','"+s_date+"','"+e_date+"',"+aid+","+w_id+");");
			System.out.println("c:"+c);
			conn.close();
		}
			catch(Exception e){ System.out.println(e);}
		return c;
	}
	
	public int addHighEdu(String name, String degree, String university, String s_date, String e_date)
	{
		int h_id=0;
		int c=0;
		
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

		Connection conn = null;
		Statement stmt = null;
		Statement stmt2=null;
		
		try{  
			conn = DriverManager.getConnection(connectionUrl + dbName, userId, password);
			stmt = conn.createStatement();
			stmt2 = conn.createStatement();
			
			ResultSet ryy=stmt.executeQuery("SELECT he_id FROM higher_education ORDER BY he_id DESC LIMIT 1 ");
			if(ryy.next()) 
			{
		    	h_id=ryy.getInt("he_id")+1;
			}
			
			if(e_date.equals(""))
				c=stmt2.executeUpdate("insert into higher_education values('"+university+"','"+degree+"','"+s_date+"',null,"+aid+","+h_id+");");
			else
				c=stmt2.executeUpdate("insert into higher_education values('"+university+"','"+degree+"','"+s_date+"','"+e_date+"',"+aid+","+h_id+");");
			
			conn.close();
		}
			catch(Exception e){ System.out.println(e);}
		return c;
		
		
	}
	public ArrayList<Integer> displayPastEvents()
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
	    Statement st1 = null;
	    ResultSet resultSet1 = null;
	    try{
	    connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
	    st1=connection.createStatement();

	    String sql1="select distinct events.e_id from events,alumini,participation where alumini.aid=participation.alumini_id and events.e_id=participation.event_id and alumini.name='"+name+"' and events.date<CURDATE();";
	    resultSet1=st1.executeQuery(sql1);

	    while(resultSet1.next()){
	    	ar.add(resultSet1.getInt("e_id"));
	    }
	      
	        connection.close();
	      } catch (Exception e) {
	        e.printStackTrace();
	      }
		return ar;
	}
	
	public ArrayList<Integer> displayFutureEvents()
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
	    Statement st1 = null;
	    ResultSet resultSet1 = null;
	    try{
	    connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
	    st1=connection.createStatement();

	    String sql1="select distinct events.e_id from events,alumini,participation where alumini.aid=participation.alumini_id and events.e_id=participation.event_id and alumini.name='"+name+"' and events.date>=CURDATE();";
	    resultSet1=st1.executeQuery(sql1);

	    while(resultSet1.next()){
	    	ar.add(resultSet1.getInt("e_id"));
	    }
	      
	        connection.close();
	      } catch (Exception e) {
	        e.printStackTrace();
	      }
		return ar;
	}
	
	public ArrayList<Integer> getWorkExperience()
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
	    Statement st1,st2 = null;
	    ResultSet resultSet1,resultSet2 = null;
	    try{
	    connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
	    st1=connection.createStatement();

	    String sql1="select w_id from alumini, work_experience where alumini.aid=work_experience.alumini and name='"+name+"'";
	    resultSet1=st1.executeQuery(sql1);

	    while(resultSet1.next()){
	    	ar.add(resultSet1.getInt("w_id"));
	    }
	      
	        connection.close();
	      } catch (Exception e) {
	        e.printStackTrace();
	      }
		return ar;
	}
	
	public ArrayList<Integer> getHigherEducation()
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
	    Statement st1,st2 = null;
	    ResultSet resultSet1,resultSet2 = null;
	    try{
	    connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
	    st1=connection.createStatement();

	    String sql1="select he_id from alumini, higher_education where alumini.aid=higher_education.alumini and name='"+name+"';";
	    resultSet1=st1.executeQuery(sql1);

	    while(resultSet1.next()){
	    	ar.add(resultSet1.getInt("he_id"));
	    }
	      
	        connection.close();
	      } catch (Exception e) {
	        e.printStackTrace();
	      }
		return ar;
	}
	
	public ArrayList<Integer> displayFEvents()
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
	    Statement st1,st2 = null;
	    ResultSet resultSet1,resultSet2 = null;
	    try{
	    connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
	    st1=connection.createStatement();

	    String sql1="select distinct e_id from events where date>=CURDATE();";
	    resultSet1=st1.executeQuery(sql1);

	    while(resultSet1.next()){
	    	ar.add(resultSet1.getInt("e_id"));
	    }
	      
	        connection.close();
	      } catch (Exception e) {
	        e.printStackTrace();
	      }
		return ar;
	}
	
	public ArrayList<Integer> displayPEvents()
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
	    Statement st1,st2 = null;
	    ResultSet resultSet1,resultSet2 = null;
	    try{
	    connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
	    st1=connection.createStatement();

	    String sql1="select distinct e_id from events where date<CURDATE();";
	    resultSet1=st1.executeQuery(sql1);

	    while(resultSet1.next()){
	    	ar.add(resultSet1.getInt("e_id"));
	    }
	      
	        connection.close();
	      } catch (Exception e) {
	        e.printStackTrace();
	      }
		return ar;
	}
}
