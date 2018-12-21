<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
    .cnf-button {
        background-color: white;
        border: none;
        color: black;
        padding: 12px 32px;
        text-align: center;
        text-decoration: none;
        font-size: 16px;
        margin: 15px 30px;
        cursor: pointer;
        float: right;
    }

    .login-textbox {
        width: auto;
        height: 30px;
    }

    .input-field {
        margin: 10px 0px 0px 90px;
    }
</style>
</head>
<body>
    <form action="loginCheck" method="post">
    <div style="width: 900px; height: 200px; background-color: seagreen; margin-left: 180px; margin-top: 120px;">
        <br>
        <div class="input-field"><b>Username:&nbsp;&nbsp;</b><input type="text" name="username" placeholder="abc@lnmiit.ac.in"></div>
        <br>
        <div class="input-field"><b>Password:&nbsp;&nbsp;&nbsp;</b><input type="password" name="password"></div>
        <input class="cnf-button" type="submit" value="Login">
	<pre>
		${requestScope.utilOutput}
	</pre>
    </div>
    </form>
</body>
</html>
