<!DOCTYPE html>
<html lang="en">
<meta name="viewport" content="width=device-width, initial-scale=1">
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

    /*     Profile Update       */
        .personal_edit_form{
           width: 40vw;
           height: 60vh;
           margin: 5vh 40vw 0;
           font-size: 1vw;
           line-height: 5vh;
           color: #708090;
        }

        .submit_personal_info {
            text-decoration: none;
            font-size: 1vw;
            color: white;
            background-color: rgba(0, 0, 0, 0.8);
            margin:5vh 5vw 0;
            padding: 1vh 1vw;
            line-height: 5vh;
            border-radius: 10%;
        }

        .submit_personal_info:hover {
            color: black;
            background-color: white;
            box-shadow: 0 0 0.4vw black;
        }

           /* side navigation bar  */
        .side_navigation{
            height: auto; /* 100% Full-height */
            width: 25vw; /* 0 width - change this with JavaScript */
            position: absolute;; /* Stay in place */
            z-index: 1; /* Stay on top */
            top: 30vh; /* Stay at the top */
            left: 0;
            transition: 0.5s; /* 0.5 second transition effect to slide in the sidenav */
            border-width: 1px;
            border-right-style: solid;
          }
          .side_nav_link {
            display: block;
            color: black;
            text-decoration: none;
            padding: 7.5% 10%;
            text-align: center;
            font-size: 1.75vw;
          }
          .side_nav_link:hover {
            background-color: rgba(0,0,0,0.8);
            color: white;
          }

        }

    /*     Footer     */
        .footer {
            margin: 0 auto ;
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
            background-color: rgba(0,0,0,0.8)
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
        String name=(String)request.getAttribute("name");
    if(name!=null)   
    session.setAttribute("Name",name);
        
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



	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		pageEncoding="ISO-8859-1"%>
	<%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>
	<%@page import="isd.Alumini"%>

	<%
		Alumini a=new Alumini();
		a.setAttr(name);
		//System.out.println(a.getYog());
    %>

	<div class="personal_edit_form">
		<form action="Personal" method="post">
			<%
			session.setAttribute("Name",(session.getAttribute("Name")));
			%>
			Name <input type="text" name="uname" placeholder="full name"><br>
			Old Password <input type="password" name="o_password" placeholder="old password"><br>
			New Password<input type="password" name="n_password"	placeholder="new password"><br>    
			Confirm Password<input type="password" name="c_password" placeholder="re-enter the new password"><br>
			Year of graduation <input type="number" min="2003" max="2014" step="1" name="yog"><br>
			Date of birth <input type="date" name="dob"><br> 
			E-Mail <input type="email" name="mailId" placeholder="e-mail"><br>
			Contacts <input type="tel" name="contacts" placeholder="enter 10 digit no."><br> 
			Address <input type="text" name="address" placeholder="enter full address"><br>
			Chapter <input type="text" name="chapter" placeholder="enter chapter"><br>
			<br>
			<button class="submit_personal_info">Submit</button>
		</form>
		<pre>
		${requestScope.utilOutput}
	</pre>
	</div>



	<div class="side_navigation">
		<a class="side_nav_link" href="profile.jsp">Personal Information</a> <a
			class="side_nav_link" href="higheredu.jsp">Higher Education</a> <a
			class="side_nav_link" href="workex.jsp">Work Experience</a> <a
			class="side_nav_link" href="myevents.jsp">Events</a>
	</div>


	<!--   <div class="footer">
        <a class="foot_notes" href="#">        Home        </a>
        <a class="foot_notes" href="#">        About        </a>
        <a class="foot_notes" href="#">        Contact Us        </a>
        <a class="foot_notes" href="#">        Address        </a>
    </div>
    <p class="developers">Developed by : Aanchal Tulsiani | Ayushi Gupta | Aakanksha Chauhan | Aakriti Agrawal</p> -->
</body>