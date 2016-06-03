<%
session.removeAttribute("nim");
session.invalidate();
response.sendRedirect("login.jsp");
%>