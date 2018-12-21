<html>
<head>
<style>
body,html {
            margin: 0;
            padding: 0;
            font-family: 'lato',sans-serif;
        }
        
    /*      Header Content - Logo Image, Heading, Sign In Button    */
        .header {
            display: -webkit-inline-box;
            width: 100%;
            height: 15vh;
            margin-bottom: 2vh; 
        }
        .logo_img {
            margin: 2vh 0 0 2vw;
            width: 12.5vw;
            height: 13vh;
        }
        .header_txt {
            font-size: 4vw;
            margin: 0 0 0 15vw;
            text-align: center;
            width: auto;
            line-height: 17.5vh;
            text-shadow: 0.2vw 0.1vw 0.5vw rgba(0, 0, 0, 0.356);
        }
        .signin {
            text-decoration: none;
            font-size: 1.75vw;
            color: white;
            background-color: rgba(0, 0, 0, 0.8);
            margin-left: 15vw;
            padding: 1vh 1vw;
            line-height: 15vh;
            border-radius: 10%;
        }
        .signin:hover {
            color: black;
            background-color: white;
            box-shadow: 0 0 0.4vw black;
        }

    /*      Top Navigation Bar     */
        .top_nav_holder {
            position: relative;
            margin: auto;
        }
        .top_nav {
            position: relative;
            background-color: chocolate;
            margin: auto;
            padding-left: 27.5vw;
            height: 6.5vh;
            text-align: center;
        }
        .top_nav_ele, .dropdown {
            float: left;
            width: auto;
            padding: 0 2%;
            background-color: antiquewhite;
            color: black;
            text-decoration: none;
            font-size: 1.2vw;
            height: inherit;
            line-height: 6.5vh;
        }
        .top_nav_ele:hover  {
            background-color: black;
            color: antiquewhite;
            width: 80px;
        }
        
        .past, .upcoming, .events {
            position: relative;
            left: -30%;
            padding: 0 32%;
            z-index: 1;
        }
        .past {
            font-size: 1vw;
            display: none;
        }
        .upcoming {
            font-size: 1vw;
            display: none;
        }
        .dropdown:hover  .past {
            display: block;
        }
        .dropdown:hover  .upcoming {
            display: block;
        }

        .flip-card {
        background-color: transparent;
        width: 315px;
        height: 200px;
        border: 1px solid #f1f1f1;
        perspective: 1000px; /* Remove this if you don't want the 3D effect */
        float: left;
        }

        /* This container is needed to position the front and back side */
        .flip-card-inner {
        position: relative;
        width: 100%;
        height: 100%;
        text-align: center;
        transition: transform 0.8s;
        transform-style: preserve-3d;
        }

        /* Do an horizontal flip when you move the mouse over the flip box container */
        .flip-card:hover .flip-card-inner {
        transform: rotateY(180deg);
        }

        /* Position the front and back side */
        .flip-card-front, .flip-card-back {
        position: absolute;
        width: 100%;
        height: 100%;
        backface-visibility: hidden;
        }

        /* Style the front side (fallback if image is missing) */
        .flip-card-front {
        background-color: black;
        color: white;
        }

        /* Style the back side */
        .flip-card-back {
        background-color: dodgerblue;
        color: white;
        transform: rotateY(180deg);
        }
</style>

</head>
<body>
 <%
        String name=(String)session.getAttribute("Name");
  
        
        %>


	<div class="header">
		<img class="logo_img" src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Logo-LNMIIT.svg/1200px-Logo-LNMIIT.svg.png">
		<p class="header_txt">ALUMINI ASSOCIATION</p>
        <a href="login.jsp" class="signin">Log Out</a>
		<br/>
		
	</div>

	<!--<div class="top_nav_holder">-->
    <div class="top_nav">
        <div style="margin:0vw 12vw 0vw -6vw;">
                    <a href="home.jsp" class="top_nav_ele" style="width:80px;">     Home              </a>                  
                    <a href="chapters.jsp" class="top_nav_ele" style="width:80px;">     Chapters          </a>
                    <div class="top_nav_ele dropdown">
                        <a href="#" class="top_nav_ele events" style="width:80px;">     Events           </a>
                        <a href="pe.jsp" class="top_nav_ele past" style="width:80px;">     Past           </a>
                        <a href="ue.jsp" class="top_nav_ele upcoming" style="width:80px;">     Upcoming       </a>
                    </div>
                    <a href="search.jsp" class="top_nav_ele" style="width:120px;">     Alumini Search        </a>
                    <a href="contactUs.jsp" class="top_nav_ele" style="width:80px;">     Contact Us           </a>
                    <a href="profile.jsp" class="top_nav_ele" style="width:80px;">     Profile           </a>
                </div>
                    <b><p style="float: right; margin: 9px 10px 0px 0px;">Hey <%=session.getAttribute("Name") %></p></b>
    </div>
    
    <br>
    <br>
    <br>
    <br>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("userId");
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
ResultSet resultSet = null;
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT location,no_of_alumini FROM chapter";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<div style="margin-left: 150px;">
    <div class="flip-card">
        <div class="flip-card-inner">
            <div class="flip-card-front">
            <h1 style="text-align: center; margin-top: 70px;"><%=resultSet.getString("location")%></h1>
            </div>
            <div class="flip-card-back">
            <h1 style="margin-top: 40px;"><b><%=resultSet.getString("location")%></b></h1> 
            <br>
            <h3>Total Alumini in this Chapter  <%=resultSet.getInt("no_of_alumini")%></h3>
            </div>
        </div>
    </div>
    </div>

<% 
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

<!-- 
<div class="footer">
		<a class="foot_notes" href="#"> Home </a> <a class="foot_notes"
			href="#"> About </a> <a class="foot_notes" href="#"> Contact Us </a>
		<a class="foot_notes" href="#"> Address </a>
	</div>
	<p class="developers">Developed by : Aanchal Tulsiani | Ayushi
		Gupta | Aakanksha Chauhan | Aakriti Agrawal</p> -->
		
		
</body>
</html>