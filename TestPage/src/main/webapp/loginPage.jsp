<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<script>
function validate()
{


    var userid = document.forms["loginForm"]["userid"].value;
    var passwd = document.forms["loginForm"]["password"].value;
  
    if (userid === null || userid === "") {
        alert("User ID must be filled");
        return false;
    }

    if (passwd === null || passwd === "") {
        alert("Password must be filled");
        return false;
    }
}

</script>
<body>
<form id="loginForm" action="LoginServlet" method=post onsubmit="return validate()">
<pre>
	User ID  <input id = "userid" type = "text" name="userid"><br>
	Password  <input id = "password" type = password name=password><br>
	<input type=submit value=Login>
	
	</pre>
</form>
</body>
</html>