<!DOCTYPE html>


<html lang="en">
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
.container {
	display: block;
	position: relative;
	padding-top: 15px;
	display: inline-block;
	padding-left: 25px;
	margin-bottom: 12px;
	cursor: pointer;
	font-size: 12px;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

/* Hide the browser's default checkbox */
.container input {
	position: absolute;
	opacity: 0;
	cursor: pointer;
	height: 0;
	width: 0;
}

/* Create a custom checkbox */
.checkmark {
	position: absolute;
	top: 15px;
	left: 0;
	height: 15px;
	width: 15px;
	background-color: #eee;
}

/* On mouse-over, add a grey background color */
.container:hover input ~ .checkmark {
	background-color: #ccc;
}

/* When the checkbox is checked, add a blue background */
.container input:checked ~ .checkmark {
	background-color: #2196F3;
}

/* Create the checkmark/indicator (hidden when not checked) */
.checkmark:after {
	content: "";
	position: absolute;
	display: none;
}

/* Show the checkmark when checked */
.container input:checked ~ .checkmark:after {
	display: block;
}

/* Style the checkmark/indicator */
.container .checkmark:after {
	left: 4px;
	top: 3px;
	width: 3px;
	height: 5px;
	border: solid white;
	border-width: 0 3px 3px 0;
	-webkit-transform: rotate(45deg);
	-ms-transform: rotate(45deg);
	transform: rotate(45deg);
}

/* drop-down menu */
.custom-select {
	position: relative;
	font-family: Arial;
	float: left;
	margin-left: 20px;
    width: 200px;
}

.custom-select select-selected {
	background-color: DodgerBlue;
}

/* Style the arrow inside the select element: */
.custom-select select-selected:after {
	position: absolute;
	content: "";
	top: 14px;
	right: 10px;
	width: 0;
	height: 0;
	border: 6px solid transparent;
	border-color: #fff transparent transparent transparent;
}

/* Point the arrow upwards when the select box is open (active): */
.custom-select select-selected.select-arrow-active:after {
	border-color: transparent transparent #fff transparent;
	top: 7px;
}

/* style the items (options), including the selected item: */
.select-items div, .select-selected {
	color: #ffffff;
	padding: 8px 16px;
	border: 1px solid transparent;
	border-color: transparent transparent rgba(0, 0, 0, 0.1) transparent;
	cursor: pointer;
}

/* Style items (options): */
.select-items {
	position: absolute;
	background-color: DodgerBlue;
	top: 100%;
	left: 0;
	right: 0;
	z-index: 99;
}

.select-items div:hover, .same-as-selected {
	background-color: rgba(0, 0, 0, 0.1);
}

.search-alumini {
	background-color:dodgerblue; 
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	border-radius: 4px;
	margin-left:550px;
	margin-top:100px;	
}

.combo-box {
	width: auto;
	height: 30px;
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
	

    <h2 style="text-align:center;">ALUMINI SEARCH</h2>
    <p><b>&nbsp;&nbsp;&nbsp;&nbsp;Choose filters</b></p>
    <div style="height: 200px;">
	<form method="post" action="A_Search">
	<div class="custom-select">
		<select class="combo-box" name="domain">
			<option value="top">Domain</option>
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
		Statement st = null;
		ResultSet resultSet = null;
		try {
			connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
			st = connection.createStatement();
		ResultSet rs=st.executeQuery("select distinct domain from work_experience");
		while(rs.next()){
		%>
			<option value="<%=rs.getString("domain") %>"><%=rs.getString("domain") %></option>
			<%
		}
		%>
		</select>
	</div>
	

	<div class="custom-select">
		<select class="combo-box" name="university">
			<option value="top">University</option>
			<%
		ResultSet rs1=st.executeQuery("select distinct university from higher_education");
		while(rs1.next())
		{
			%>

			<option value="<%=rs1.getString("university") %>"><%=rs1.getString("university") %></option>
			<%} %>
		</select>
	</div>

	<div class="custom-select">
		<select class="combo-box" name="year">
			<option value="top">Year of Graduation</option>
			<%
			ResultSet rs3=st.executeQuery("select distinct year_of_graduation from alumini");
			while(rs3.next())
			{
			%>
			<option value=<%=rs3.getString("year_of_graduation") %>><%=rs3.getString("year_of_graduation") %></option>
			<%} %>
		</select>
	</div>
	
	<div class="custom-select">
		<select class="combo-box" name="company">
			<option value="top">Company</option>
			<%
			ResultSet rs4=st.executeQuery("select distinct company_name from work_experience");
		while(rs4.next())
		{
		%>
			<option value="<%=rs4.getString("company_name") %>"><%=rs4.getString("company_name") %></option>
			<%} %>
		</select>
	</div>
<%
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
    %>
    
	
	<input class="search-alumini" type="submit" value="Search Alumini">
	</form>
	</div>

</body>
</html>