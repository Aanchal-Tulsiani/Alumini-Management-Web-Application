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

    /*      Carousel        */
        .carousel {
            width: 60vw;
            height: 60vh;
            background-color: rgba(128, 255, 0, 0.288);
            margin: auto;
            position: relative;
        }
        .carousel_img {
            width: 100%;
            height: 100%;
            position: relative;
        }
        .carousel_selector {
            margin-top: 1vh;
            width: 100%;
            height: 5vh;
            text-align: center;
        }
        .carousel_selector a {
            text-decoration: none;
            color: black;
            font-size: 1vw;
            line-height: 6vh;
            border-style: solid;
            border-width: 1px;
            margin: 0 2vw;
            padding: 0.6vh 0.6vw;
            border-radius: 50%;
            background-color: black;
            color: white;
        }
        .img_1:active .img_2 {
            visibility: hidden;
        }
    /*      Info About College  Section         */
        .info_container {
            height: auto;
            background-color: rgba(128, 128, 128, 0.35);
            padding: 5vh 7.5vw;
            margin-top: 7.5vh;
        }
        .info_heading {
            font-size:2vw;
            margin: 0;
        }
        .info_details {
            font-size: 1.25vw;
            margin: 2vh 0;
            line-height: 2;
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
    <div class="header">
        <img class="logo_img" src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Logo-LNMIIT.svg/1200px-Logo-LNMIIT.svg.png	">
        <p class="header_txt">ALUMINI ASSOCIATION</p>
        <a href="logindetails.jsp" class="signin">LogIn</a>
    </div>

    <!--<div class="top_nav_holder">-->
        
        <div class="top_nav">
        <div style="margin:0vw 15vw 0vw 2vw;">
                    <a href="login.jsp" class="top_nav_ele" style="width:80px;">     Home              </a>                  
                    <a href="loginchapters.jsp" class="top_nav_ele" style="width:80px;">     Chapters          </a>
                    <div class="top_nav_ele dropdown">
                        <a href="#" class="top_nav_ele events" style="width:80px;">     Events           </a>
                        <a href="loginpe.jsp" class="top_nav_ele past" style="width:80px;">     Past           </a>
                        <a href="loginue.jsp" class="top_nav_ele upcoming" style="width:80px;">     Upcoming       </a>
                    </div>
                    <a href="logincontactUs.jsp" class="top_nav_ele" style="width:80px;">     Contact Us           </a>
                </div>
    </div>
    <br>
    <br>
    <br>
    <br>
    
    <!--</div>-->

    <div class="carousel">
        <img class="carousel_img dsiplay_1" src="https://www.entrancezone.com/engineering/wp-content/uploads/2016/10/LNMIIT-2017-1.jpg">
        <img class="carousel_img dsiplay_2" src="https://www.entrancezone.com/engineering/wp-content/uploads/2016/10/LNMIIT-2017-1.jpg" style="display:none;">
        <img class="carousel_img dsiplay_3" src="https://www.entrancezone.com/engineering/wp-content/uploads/2016/10/LNMIIT-2017-1.jpg" style="display:none;">
    </div>
    <!-- <div class="carousel_selector">
        <a class="img_1" href="#">1</a>
        <a class="img_2" href="#">2</a>
        <a class="img_3" href="#">3</a>
    </div> -->

    <div class="info_container">
        <p class="info_heading">About LNMIIT</p>
        <P class="info_details">
            Founded in 2011, the LNMIIT Alumni Association has been ever since connecting alumni all over the world by organizing Chapter meets in various cities across the globe, and the Alumni Meet in the LNMIIT campus. The primary mission of the LNMIIT Alumni Association is to reconnect the alumni with their fellow alumni with various Chapter Meets across the globe, institute with Alumni meet, and students on the campus with interactive sessions and online video sessions- engage through various activities among all the stakeholders- to generate impact through several social and academic projects for a collective growth.
        </P>        
    </div>

    <div class="footer">
        <a class="foot_notes" href="login.jsp">        Home        </a>
        <a class="foot_notes" href="logincontactUs.jsp">        Contact Us        </a>
    </div>
    <p class="developers">Developed by : Aanchal Tulsiani | Ayushi Gupta | Aakanksha Chauhan | Aakriti Agrawal</p>
</body>
