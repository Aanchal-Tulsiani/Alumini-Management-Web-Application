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


    /*     Higher Education Update       */
        .edu_edit_form{
           width: 40vw;
           height: 60vh;
           margin: 9vh 40vw 0;
           font-size: 1vw;
           line-height: 5.5vh;
           color: #708090;
        }

        .submit_edu_info {
            text-decoration: none;
            font-size: 1vw;
            color: white;
            background-color: rgba(0, 0, 0, 0.8);
            margin:20vh 4vw 0 10vw	;
            padding: 1vh 1vw;
            line-height: 5vh;
            border-radius: 10%;
        }

        .submit_edu_info:hover {
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

    </style>
</head>

<body>
 <%
        String name=(String)request.getAttribute("name");
    if(name!=null)   
    session.setAttribute("Name",name);
        
        %>


	<div class="header">
		<img class="logo_img" src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Logo-LNMIIT.svg/1200px-Logo-LNMIIT.svg.png	">
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
    		
   <div class="edu_edit_form">
      <form action="addEdu" method="post">
      
 <%
		session.setAttribute("aname", session.getAttribute("Name"));
	%>
			
         Degree <select name="degree">
           <option value="M.Tech">M.Tech</option>
           <option value="M.Sc">M.Sc</option>
           <option value="PhD">PhD</option>
           <option value="MBA">MBA</option>
           <option value="Other">Other</option>
         </select><br>
         University   <input type="text" name="university" placeholder="University"><br>
         Start Date   <input type="date" name="s_date"><br>
         End Date   <input type="date" name="e_date"><br>

       <button	type="submit" class="submit_edu_info">Submit</button>
       </form>
   </div>

   <div class="side_navigation">
     <a class="side_nav_link" href="profile.jsp">Personal Information</a>
     <a class="side_nav_link" href="higheredu.jsp">Higher Education</a>
     <a class="side_nav_link" href="workex.jsp">Work Experience</a>
     <a class="side_nav_link" href="myevents.jsp">Events</a>
   </div>
   
   <pre>
	 <b> ${requestScope.utilOutput}</b>
   </pre>

</body>
