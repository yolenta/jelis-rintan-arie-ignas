<%-- 
    Document   : index
    Created on : May 18, 2016, 5:41:55 PM
    Author     : cinta kamu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>AquaBusiness | Style Demo</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <link rel="stylesheet" href="../layout/styles/layout.css" type="text/css" />
    </head>
    <body id="top">
        <div class="wrapper col1">
            <div id="topbar">
                <div id="social">
                    <ul>
                    </ul>
                </div>
                <div id="search">
                    <form action="#" method="post">
                        <fieldset>
                            <legend>Site Search</legend>
                            <input type="text" value="Search the site&hellip;"  onfocus="this.value = (this.value == 'Search the site&hellip;') ? '' : this.value;" />
                            <input type="submit" name="go" id="go" value="GO" />
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
        <div class="wrapper col2">
            <div id="header">
                <div class="fl_left">
                    <h1><a href="#">Sistem Informasi Mahasiswa</a></h1>
                    <p>Universitas Sanata Dharma</p>
                </div>


                <ul id="topnav">

                    <li><a href="#">Link</a>
                        <ul>
                            <li><a href="http://usd.ac.id/">usd.ac.id</a></li>
                            <li><a href="http://exelsa.usd.ac.id/">exelsa.usd.ac.id</a></li>
                            <li><a href="http://mahasiswa.usd.ac.id/">mahasiswa.usd.ac.id</a></li>
                        </ul>
                    </li>
                    <li><a href="../panduan.jsp">panduan</a></li>                    
                    <li class="active"><a href="../index.jsp">Home</a></li>
                </ul>

                <br class="clear" />
            </div>
        </div>
        <div class="wrapper col3">
            <div id="breadcrumb">Waktu hari ini <%= new java.util.Date()%></div>
        </div>
        <div class="wrapper col4">
            <div id="container">
                <div id="content">
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
                </div>
                <div id="column">
                    <div class="subnav">
                        <h1>form Login</h1>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div class="wrapper col5">
            <div id="footer">
                <div class="footbox">
                    <h2>Stay In The Know !</h2>
                    <p>Please enter your email to join our mailing list</p>
                    
                </div>
                <div class="footbox">
                    <h2>Further Information !</h2>
                    <ul>
                      
                    </ul>
                </div>
                <div class="footbox last">
                    <h2>Company Details !</h2>
                    <address>
                        Universitas Sanata Dharma<br />
                        123456<br />                        
                        info@usd.ac.id<br />
                    </address>
                    Tel: 5555 476491888 
                    
                </div>
                <br class="clear" />
            </div>
        </div>
        <div class="wrapper col6">
            <div id="copyright">
                <p class="fl_left">Copyright &copy; 2016 - All Rights Reserved - <a href="#">ISM.usd.ac.id</a></p>
                <p class="fl_right">Template by <a target="_blank" href="http://www.usd.ac.id/">Jelis Arie RIntan Ignas</a></p>
                <br class="clear" />
            </div>
        </div>
    </body>
</html>
