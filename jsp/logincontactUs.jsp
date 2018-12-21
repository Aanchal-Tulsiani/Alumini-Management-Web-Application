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
</style>

</head>



<body>
 <div class="header">
        <img class="logo_img" src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Logo-LNMIIT.svg/1200px-Logo-LNMIIT.svg.png">
        <p class="header_txt">ALUMINI ASSOCIATION</p>
        <a href="logindetails.jsp" class="signin">LogIn</a>
    </div>

    <!--<div class="top_nav_holder">-->
        <div class="top_nav">
        <div style="margin:0vw 15vw 0vw 2vw;">
                    <a href="login.jsp" class="top_nav_ele" style="width:80px;">     Home              </a>                  
                    <a href="loginchapters.jsp" class="top_nav_ele" style="width:120px;">     Chapters          </a>
                    <div class="top_nav_ele dropdown">
                        <a href="#" class="top_nav_ele events" style="width:50px;">     Events           </a>
                        <a href="loginpe.jsp" class="top_nav_ele past" style="width:80px;">     Past           </a>
                        <a href="loginue.jsp" class="top_nav_ele upcoming" style="width:80px;">     Upcoming       </a>
                    </div>
                    &nbsp;
                    &nbsp;
                    &nbsp;
                    <a href="logincontactUs.jsp" class="top_nav_ele" style="width:150px;">     Contact Us           </a>
                </div>
    <div style="margin:0 25% 0 -5vw">
   <h2 style="margin-right:200px;">Contact Info</h2>
<p>LNMIIT,Rupa ki Nangal, Post-Sumel, Via-Jamdoli, Jaipur, Rajasthan 302031<br>
 0141-2688093, 0141-5191713/720<br>
 alumni@lnmiit.ac.in<br>
 https://www.lnmiit.ac.in/</p>
    </div>
    
</body>
</html>