<%@ page import="utils.User" %>
<jsp:useBean id="user" class="dao.UserDaoImpl">
</jsp:useBean>
<%
String email=request.getParameter("id1");
String password = request.getParameter("id2");
User ud ;
ud= user.findUser(email);
if(ud!=null) {
    if (email.equals(ud.getEmailId()) && password.equals(ud.getPassword())) {
        request.getSession(true);
        session.setAttribute("email", email);

        response.sendRedirect("/admin.jsp");
    }else{
        out.print("error");
    }
}
else{
    out.println("error");
}

%>
