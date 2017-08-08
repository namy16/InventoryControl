<%@ page import="utils.User" %>
<jsp:useBean id="user" class="dao.UserDaoImpl">
</jsp:useBean>
<%--
  Created by IntelliJ IDEA.
  User: parashan
  Date: 8/8/2017
  Time: 1:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
String email=request.getParameter("email");
String password = request.getParameter("password");
User ud ;
ud= user.findUser(email);

if(email.equals(ud.getEmailId()) && password.equals(ud.getPassword())) {
    request.getSession(true);
    session.setAttribute("email",email);

    response.sendRedirect("/admin.jsp");
}

%>
</body>
</html>
