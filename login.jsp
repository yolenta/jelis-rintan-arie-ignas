<%-- 
    Document   : login
    Created on : May 24, 2016, 11:38:06 AM
    Author     : basisb13sa
--%>
<%@ page session="false" %>
<HTML> 
    <HEAD>
        <TITLE>LOGIN</TITLE>
    </HEAD>
    <BODY background="Picture3.jpg">
        <center>
            <H1>LOGIN</H1>
            <FORM METHOD="POST" ACTION="ProsesLogin.jsp">
                <% if (request.getParameter("error")!=null) {
                %> Login GAGAL. Silahkan diulangi <BR><HR> <% } %> 
                <TABLE> 
                    <TR> 
                        <TD>User Name</TD>
                        <TD><INPUT TYPE=TEXT NAME="userName"></TD>
                    </TR>
                    <TR> 
                        <TD>Password</TD>
                        <TD><INPUT TYPE=PASSWORD NAME="password"></TD> 
                    </TR>
                    <TR> 
                        <TD COLSPAN="2"><INPUT TYPE=SUBMIT VALUE="Login"></TD>
                    </TR>
                </table>
            </form>
            <a href="HalamanUtama.jsp">Kembali ke Halaman Utama...</a>
        </center>
    </body>
</html>