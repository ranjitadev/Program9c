<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Session Demo</title>
</head>
<body>

<%
    String name = request.getParameter("uname");

    if (name != null && !name.trim().isEmpty()) {

        out.print("<h3>Welcome! " + name + "</h3>");
        out.print("<p>Session has started for " + name + "</p>");

        // Store in session
        session.setAttribute("user", name);

        out.print("<p>Your name has been stored in session object</p>");

        // Set session timeout = 60 seconds
        session.setMaxInactiveInterval(60);

        out.print("<p>Session will expire in 1 minute</p>");
        out.print("<p>Click below within 1 minute to check session:</p>");
    } else {
        out.print("<h3>Please enter your name first!</h3>");
    }
%>

<a href="second.jsp">Display the value</a>

</body>
</html>