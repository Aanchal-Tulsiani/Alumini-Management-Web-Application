<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
    .cnf-button {
        background-color: white;
        border: none;
        color: black;
        padding: 15px 32px;
        text-align: center;
        text-decoration: none;
        font-size: 16px;
        margin: 50px 15px;
        cursor: pointer;
        float: right;
    }
</style>
</head>
<body>

    <div style="width: 900px; height: 200px; background-color: lightseagreen; margin-left: 180px; margin-top: 120px;">
    <form action=eventRegister method="post">
    <%
System.out.println("ajd ="+request.getParameter("bt"));
    
    session.setAttribute("Name",session.getAttribute("Name"));
	session.setAttribute("Eid",String.valueOf(request.getParameter("bt")));


%>

        <br>
        <h3>&nbsp;&nbsp;&nbsp;&nbsp;<b>Are you sure you want to register for this event?</b></h3>
        <input type="submit" class="cnf-button" value=Register>
        </form>
        <a href="ue.jsp" class="cnf-button"><b>Cancel</b></a>
    </div>
</body>
</html>