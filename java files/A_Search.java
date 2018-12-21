
import java.sql.*;
import java.io.PrintWriter;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A_Search
 */
@WebServlet("/A_Search")
public class A_Search extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A_Search() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sc=request.getParameter("company");
		String sy=request.getParameter("year");
		String su=request.getParameter("university");
		String sd=request.getParameter("domain");
		
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/alumini","root","ayushi1799");  
			Statement stmt=con.createStatement();  	
			PrintWriter writer =  response.getWriter();
		    response.setContentType("text/html");
		    writer.println("<h4><table> <tr><th>Alumini</th> <th>Phone_No</th></tr></h4>");
			if(sc.equals("top") && sy.equals("top") && su.equals("top") && sd.equals("top"))
			{
				writer.println("<br><font color=black>"+"Please choose some filter"+"</font>");
			}
			
			else if(!sc.equals("top") && sy.equals("top") && su.equals("top") && sd.equals("top"))
			{
				ResultSet rs=stmt.executeQuery("select distinct u_name, phone_no from alumini, work_experience where alumini.aid=work_experience.alumini and company_name='"+sc+"'");  
			    while(rs.next()) 
				{
				     writer.println("<tr><br><font color=black><td>"+rs.getString("u_name")+"</td><td>"+rs.getString("phone_no")+"</td></font></tr>");
				}
			}
			else if(sc.equals("top") && !sy.equals("top") && su.equals("top") && sd.equals("top"))
			{
				ResultSet rs=stmt.executeQuery("select distinct u_name, phone_no from alumini where year_of_graduation="+Integer.parseInt(sy));  
			    while(rs.next()) 
				{
			    	writer.println("<tr><br><font color=black><td>"+rs.getString("u_name")+"</td><td>"+rs.getString("phone_no")+"</td></font></tr>");
				}
			}
			else if(sc.equals("top") && sy.equals("top") && !su.equals("top") && sd.equals("top"))
			{
				ResultSet rs=stmt.executeQuery("select distinct u_name, phone_no from alumini, higher_education where alumini.aid=higher_education.alumini and university='"+su+"'");  
			    while(rs.next()) 
				{
			    	writer.println("<tr><br><font color=black><td>"+rs.getString("u_name")+"</td><td>"+rs.getString("phone_no")+"</td></font></tr>");
				}
			}
			else if(sc.equals("top") && sy.equals("top") && su.equals("top") && !sd.equals("top"))
			{
				ResultSet rs=stmt.executeQuery("select distinct u_name, phone_no from alumini, work_experience where alumini.aid=work_experience.alumini and domain='"+sd+"'");  
			    while(rs.next()) 
				{
			    	writer.println("<tr><br><font color=black><td>"+rs.getString("u_name")+"</td><td>"+rs.getString("phone_no")+"</td></font></tr>");
				}
			}
			else if(!sc.equals("top") && !sy.equals("top") && su.equals("top") && sd.equals("top"))
			{
				ResultSet rs=stmt.executeQuery("select distinct u_name, phone_no from alumini, work_experience where alumini.aid=work_experience.alumini and company_name='"+sc+"' and year_of_graduation="+Integer.parseInt(sy));  
			    while(rs.next()) 
				{
			    	writer.println("<tr><br><font color=black><td>"+rs.getString("u_name")+"</td><td>"+rs.getString("phone_no")+"</td></font></tr>");
				}
			}
			else if(sc.equals("top") && !sy.equals("top") && !su.equals("top") && sd.equals("top"))
			{
				ResultSet rs=stmt.executeQuery("select distinct u_name, phone_no from alumini, higher_education where alumini.aid=higher_education.alumini and university='"+su+"' and year_of_graduation="+Integer.parseInt(sy));  
			    while(rs.next()) 
				{
			    	writer.println("<tr><br><font color=black><td>"+rs.getString("u_name")+"</td><td>"+rs.getString("phone_no")+"</td></font></tr>");
				}
			}
			else if(sc.equals("top") && !sy.equals("top") && su.equals("top") && !sd.equals("top"))
			{
				ResultSet rs=stmt.executeQuery("select distinct u_name, phone_no from alumini, work_experience where alumini.aid=work_experience.alumini and domain='"+sd+"' and year_of_graduation="+Integer.parseInt(sy));  
			    while(rs.next()) 
				{
			    	writer.println("<tr><br><font color=black><td>"+rs.getString("u_name")+"</td><td>"+rs.getString("phone_no")+"</td></font></tr>");
				}
			}
			else if(sc!="top" && sy=="top" && su!="top" && sd=="top")
			{
				ResultSet rs=stmt.executeQuery("select distinct u_name, phone_no from alumini, higher_education, work_experience where alumini.aid=work_experience.alumini and alumini.aid=higher_education.alumini and company_name='"+sc+"' and university='"+su+"'");  
			    while(rs.next()) 
				{
			    	writer.println("<tr><br><font color=black><td>"+rs.getString("u_name")+"</td><td>"+rs.getString("phone_no")+"</td></font></tr>");
				}
			}
			
			else if(!sc.equals("top") && sy.equals("top") && su.equals("top") && !sd.equals("top"))
			{
				ResultSet rs=stmt.executeQuery("select distinct u_name, phone_no from alumini, work_experience where alumini.aid=work_experience.alumini and company_name='"+sc+"' and domain='"+sd+"'");
				while(rs.next()) 
				{
			    	writer.println("<tr><br><font color=black><td>"+rs.getString("u_name")+"</td><td>"+rs.getString("phone_no")+"</td></font></tr>");
				}
			}
			else if(sc.equals("top") && sy.equals("top") && !su.equals("top") && !sd.equals("top"))
			{
				ResultSet rs=stmt.executeQuery("select distinct u_name, phone_no from alumini, higher_education, work_experience where alumini.aid=work_experience.alumini and alumini.aid=higher_education.alumini and domain='"+sd+"' and university='"+su+"'");
				while(rs.next()) 
				{
			    	writer.println("<tr><br><font color=black><td>"+rs.getString("u_name")+"</td><td>"+rs.getString("phone_no")+"</td></font></tr>");
				}
			}
			else if(!sc.equals("top") && !sy.equals("top") && !su.equals("top") && sd.equals("top"))
			{
				ResultSet rs=stmt.executeQuery("select distinct u_name, phone_no from alumini, higher_education, work_experience where alumini.aid=work_experience.alumini and alumini.aid=higher_education.alumini and company_name='"+sc+"' and university='"+su+"' and year_of_graduation="+Integer.parseInt(sy));
				while(rs.next()) 
				{
			    	writer.println("<tr><br><font color=black><td>"+rs.getString("u_name")+"</td><td>"+rs.getString("phone_no")+"</td></font></tr>");
				}
			}
			else if(sc.equals("top") && !sy.equals("top") && !su.equals("top") && !sd.equals("top"))
			{
				ResultSet rs=stmt.executeQuery("select distinct u_name, phone_no from alumini, higher_education, work_experience where alumini.aid=work_experience.alumini and alumini.aid=higher_education.alumini and domain='"+sd+"' and university='"+su+"' and year_of_graduation="+Integer.parseInt(sy));
				while(rs.next()) 
				{
			    	writer.println("<tr><br><font color=black><td>"+rs.getString("u_name")+"</td><td>"+rs.getString("phone_no")+"</td></font></tr>");
				}
			}
			else if(!sc.equals("top") && sy.equals("top") && !su.equals("top") && !sd.equals("top"))
			{
				ResultSet rs=stmt.executeQuery("select distinct u_name, phone_no from alumini, higher_education, work_experience where alumini.aid=work_experience.alumini and alumini.aid=higher_education.alumini and company_name='"+sc+"' and university='"+su+"' and domain='"+sd+"'");
				while(rs.next()) 
				{
			    	writer.println("<tr><br><font color=black><td>"+rs.getString("u_name")+"</td><td>"+rs.getString("phone_no")+"</td></font></tr>");
				}
			}
			else if(!sc.equals("top") && !sy.equals("top") && su.equals("top") && !sd.equals("top"))
			{
				ResultSet rs=stmt.executeQuery("select distinct u_name, phone_no from alumini, work_experience where alumini.aid=work_experience.alumini and company_name='"+sc+"' and domain='"+sd+"' and year_of_graduation="+Integer.parseInt(sy));
				while(rs.next()) 
				{
			    	writer.println("<tr><br><font color=black><td>"+rs.getString("u_name")+"</td><td>"+rs.getString("phone_no")+"</td></font></tr>");
				}
			}
			else if(!sc.equals("top") && !sy.equals("top") && !su.equals("top") && !sd.equals("top"))
			{
				ResultSet rs=stmt.executeQuery("select distinct u_name, phone_no from alumini, higher_education, work_experience where alumini.aid=work_experience.alumini and alumini.aid=higher_education.alumini and company_name='"+sc+"' and university='"+su+"' and domain='"+sd+"'and year_of_graduation="+Integer.parseInt(sy));
				while(rs.next()) 
				{
			    	writer.println("<tr><br><font color=black><td>"+rs.getString("u_name")+"</td><td>"+rs.getString("phone_no")+"</td></font></tr>");
				}
			}
						
			writer.close();
			con.close();
		}
			catch(Exception e){ System.out.println(e);}  
	
	}

}
