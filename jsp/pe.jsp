<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
/*     Footer     */
.footer {
	margin: 0 auto;
	width: 100%;
	height: auto;
	background-color: rgba(0, 0, 0, 0.75);
}

.foot_notes {
	display: block;
	color: white;
	text-decoration: none;
	text-align: center;
	font-size: 1.25vw;
	padding: 1.25vh 0;
	background-color: rgba(0, 0, 0, 0.8)
}

.foot_notes:hover {
	background-color: rgba(0, 0, 0, 0.5);
}

.developers {
	margin: auto;
	font-size: 1vw;
	text-align: center;
	padding: 2vh 0;
	color: rgba(0, 0, 0, 0.555);
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
                    <a href="chapters.jsp" class="top_nav_ele" style="width:90px;">     Chapters          </a>
                    <div class="top_nav_ele dropdown">
                        <a href="#" class="top_nav_ele events" style="width:80px;">     Events           </a>
                        <a href="pe.jsp" class="top_nav_ele past" style="width:80px;">     Past           </a>
                        <a href="ue.jsp" class="top_nav_ele upcoming" style="width:80px;">     Upcoming       </a>
                    </div>
                    <a href="search.jsp" class="top_nav_ele" style="width:150px;">     Alumini Search        </a>
                    <a href="contactUs.jsp" class="top_nav_ele" style="width:120px;">     Contact Us           </a>
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
	<%@page import="isd.Event"%>
	<%@page import="isd.Alumini" %>
	<%@page import="java.util.ArrayList" %>

	<%
		Alumini a=new Alumini();
		a.setAttr(name);
		ArrayList<Integer> ar=new ArrayList<Integer>();
		
		ar=a.displayPEvents();
		
		int h=ar.size();
		int i=0;

			while (i<h) {
			Event e=new Event();
			e.setAttr(ar.get(i));
			i++;
		%>
		<form action=<%=e.getjsp_path()%> method="post">
		<div class="w3-container" style="width: 100%">
			<br>
			<div class="w3-card-4" style="width: 100%">
				<header class="w3-container w3-light-grey">     
					<h2>
						<b><%=e.getTitle()%></b>
					</h2>
					<p>
						<i><%=e.getDate()%></i><span style="float: right"><%=e.gettoe()%></span>
					</p>
					<p style="float: right"><%=e.getChapter()%></p>
					<br>
				</header>
				<div class="w3-container">
					<p><%=e.getDesc()%></p>
					<br>
				</div>
				
				
				
				<button class="w3-button w3-block w3-dark-grey" type="submit">View Details</button>
		
			</div>
		</div>
		</form>
	<%} %>	
	
</body>
</html>
