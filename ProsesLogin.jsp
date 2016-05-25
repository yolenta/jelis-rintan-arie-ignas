<%-- 
    Document   : ProsesLogin
    Created on : May 24, 2016, 11:42:59 AM
    Author     : basisb13sa
--%>
<%@ page session="false" %> 
<jsp:useBean id="LoginBean" scope="page" class="bean.LoginBean" /> 
<% if (LoginBean.login(request.getParameter("userName"),
        request.getParameter("password"))){
    request.getRequestDispatcher("View_Database").forward(request, response);
}else{
    //out.println("username");
    response.sendRedirect("login.jsp?error=yes");
}



//diinginkan menggunakan sendRedirect karena ingin mengirimkan
//bagian ?error dan melihat apa yang terjadi pada halaman
//Login.jsp. Nantinya URL akan tetap URL saat itu. response.sendRedirect("Login.jsp?error=yes");
%>