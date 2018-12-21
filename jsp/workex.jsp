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

    /*     Work Experience       */
        .work_info{
          font-size: 1vw;
          margin: 0;
          color: #708090;
          text-decoration: none;
          float: left;
          clear: left;
          line-height: 5vh;
        }

        .work_info_detail{
          font-size: 1vw;
          float: right;
          color: #2F4F4F;
          line-height: 5vh;
        }

        .edit_work_info {
            text-decoration: none;
            font-size: 1vw;
            color: white;
            background-color: rgba(0, 0, 0, 0.8);
            margin:10vh 6vw 5vh 6vw;
            padding: 1vh 1vw;
            line-height: 5vh;
            border-radius: 10%;
        }

        .edit_work_info:hover {
            color: black;
            background-color: white;
            box-shadow: 0 0 0.4vw black;
        }

        /*        Add card for work experience button   */
        .add_work_info {
            text-decoration: none;
            font-size: 1vw;
            color: white;
            background-color: rgba(0, 0, 0, 0.8);
            margin:50vh 40vw 0;
            padding: 1vh 1vw;
            line-height: 10vh;
            border-radius: 10%;
        }

        .add_work_info:hover {
            color: black;
            background-color: white;
            box-shadow: 0 0 0.4vw black;
        }

        /*        View Cards      */
            * {
              box-sizing: content-box;
            }

            body {
              font-family: Arial, Helvetica, sans-serif;
            }

            /* Float four columns side by side */
            .column {
              float: left;
              width: 23vw;
              padding: 0 10px;
            }

            /* Remove extra left and right margins, due to padding in columns */
            .row {margin: 0 -5px 0 30vw;}

            /* Clear floats after the columns */
            .row:after {
              content: "";
              display: table;
              clear: both;
            }

            /* Style the counter cards */
            .card {
              height:50vh;
              box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); /* this adds the "card" effect */
              padding: 40px 20px;
              margin: 10px 15px  0 20px;
              text-align: center;
              position:relative;
              background-color: #f1f1f1;
              float: left;
            }

            /* Responsive columns - one column layout (vertical) on small screens */
            @media screen and (max-width: 600px) {
              .column {
                width: 100%;
                display: block;
                margin-bottom: 20px;
              }
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
    </style>
</head>

<body>
    <%
        String name = String.valueOf(session.getAttribute("Name"));
    %>
    
  <div class="header">
		<img class="logo_img" src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Logo-LNMIIT.svg/1200px-Logo-LNMIIT.svg.png">
		<p class="header_txt">ALUMINI ASSOCIATION</p>
		<a href="login.jsp" class="signin">Log Out</a>
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
    
	   <div class="side_navigation">
     <a class="side_nav_link" href="profile.jsp">Personal Information</a>
     <a class="side_nav_link" href="higheredu.jsp">Higher Education</a>
     <a class="side_nav_link" href="workex.jsp">Work Experience</a>
     <a class="side_nav_link" href="myevents.jsp">Events</a>
   </div>
	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		pageEncoding="ISO-8859-1"%>
	<%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>
	<%@page import="isd.WorkEx"%>
	<%@page import="isd.Alumini" %>
	<%@page import="java.util.ArrayList" %>

	<%
		Alumini a=new Alumini();
		a.setAttr(name);
		ArrayList<Integer> ar=new ArrayList<Integer>();
		
		ar=a.getWorkExperience();
		
		int h=ar.size();
		int i=0;

			while (i<h) {
			WorkEx w=new WorkEx();
			w.setAttr(ar.get(i));
			
		%>

		<form action="editWorkEx.jsp" method="post">
		<div style="margin-left:300px;">
		  
		     <div class="column">
		       <div class="card">
			 <p><span class="work_info">Company name</span><span class="work_info_detail"><%=w.getCompanyName()%></span></p><br>
			 <p><span class="work_info">Job title</span><span class="work_info_detail"><%=w.getTitle()%></span></p><br>
			 <p><span class="work_info">Domain</span><span class="work_info_detail"><%=w.getDomain()%></span></p><br>
			 <p><span class="work_info">Location</span><span class="work_info_detail"><%=w.getLocation()%></span></p><br>
			 <p><span class="work_info">Start date</span><span class="work_info_detail"><%=w.getStartDate()%></span></p><br>
			 <p><span class="work_info">End date</span><span class="work_info_detail"><%=w.getEndDate()%></span></p><br>

			 <button type="submit" class="edit_work_info" name="work" value=<%=ar.get(i)%>>Edit</button>
		       </div>
		     </div>
		   </div>
		   </form>

	<%		
			i++;
	}
	%>
	
<p style="margin: 400px 200px 0 0;">
   <a href="addWorkForm.jsp" class="add_work_info">Add</a>
</p>
</body>
