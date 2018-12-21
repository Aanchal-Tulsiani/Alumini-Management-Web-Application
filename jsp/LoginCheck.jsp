<%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>

<%

	String username=request.getParameter("username");
	String pswd=request.getParameter("password");
	try{
 
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/alumini","root","ayushi1799");  
		Statement stmt=con.createStatement();  

		String QueryString = "select pswd from alumini where name='"+username+"'";
		ResultSet rs = stmt.executeQuery(QueryString);
		while(rs.next()){
			if(rs.getString("pswd").equals(pswd))
			{
				session.setAttribute("username",username);
				/* response.sendRedirect("home.jsp"); */
				request.getRequestDispatcher("home.jsp").forward(request, response);
			} 
			else
			{
				String utilOutput = "Please enter valid credentials";
			    	request.setAttribute("utilOutput", utilOutput);
			 	request.getRequestDispatcher("logindetails.jsp").forward(request, response);
			}
		}
		
		
		con.close();
	}
	
	catch (Exception e){
	  	out.print(e);
	}
	
%>
