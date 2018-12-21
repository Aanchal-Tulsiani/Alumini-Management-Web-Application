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


        /*        View Cards      */
        * {
            box-sizing: border-box;
            }

            body {
            font-family: Arial, Helvetica, sans-serif;
            }

            /* Float four columns side by side */
            .column {
            float:right ;
            width: 50%;
            padding: 0 10px;
            }

            /* Remove extra left and right margins, due to padding in columns */
            .row {margin: 0 70px 0 30vw;}

            /* Clear floats after the columns */
            .row:after {
            content: "";
            display: table;
            clear: both;
            }

            /* Style the counter cards */
            .card {
            height: 50vh;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); /* this adds the "card" effect */
            padding: 40px 20px;
            margin:20px 15px;
            text-align: center;
            position: relative;
            background-color: #f1f1f1;
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
    
	<div class="side_navigation">
     <a class="side_nav_link" href="profile.jsp">Personal Information</a>
     <a class="side_nav_link" href="higheredu.jsp">Higher Education</a>
     <a class="side_nav_link" href="workex.jsp">Work Experience</a>
     <a class="side_nav_link" href="myevents.jsp">Events</a>
   </div>
   
   
	 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
        pageEncoding="ISO-8859-1"%>
	<%@page import="isd.Event" %>
	<%@page import="isd.Alumini" %>
	<%@page import="java.util.ArrayList" %>

    <%
    
    ArrayList<Integer> ar=new ArrayList<Integer>();
    ArrayList<Integer> ar2=new ArrayList<Integer>();
    Alumini a= new Alumini();
    a.setAttr(name);
    ar=a.displayPastEvents();
    ar2=a.displayFutureEvents();
    
    int length=ar.size();
    int length2=ar2.size();
    int i=0,j=0;
    
    
    %>
     <div class="row">
      <div class="column">
        <div class="card">
          <h3>Attended Events</h3>
      <%    while(i<length){
    	  		Event e=new Event();
    	  		e.setAttr(ar.get(i));
    	  		i++;
        	  %>
          <p>
           <b><%=e.getTitle()%></b><b>&nbsp;&nbsp;&nbsp;<%=e.getDate()%></b><br>
          </p>
          <% }%>
        </div>
      </div>
      <div class="column">
        <div class="card">
          <h3>Registered Events</h3>
            <%   while(j<length2){
                	Event e2=new Event();
        	  		e2.setAttr(ar2.get(j));
        	  		j++;
            %>
            <p>
						 <b><%=e2.getTitle()%></b><b>&nbsp;&nbsp;&nbsp;<%=e2.getDate()%></b><br>
            </p>
            <% }%>
        </div>
      </div>
    </div>

    


 <!--    <div class="footer">
        <a class="foot_notes" href="#">        Home        </a>
        <a class="foot_notes" href="#">        About        </a>
        <a class="foot_notes" href="#">        Contact Us        </a>
        <a class="foot_notes" href="#">        Address        </a>
    </div>
    <p class="developers">Developed by : Aanchal Tulsiani | Ayushi Gupta | Aakanksha Chauhan | Aakriti Agrawal</p>
	 -->
    
</body>
</html>