<%-- 
    Document   : index
    Created on : May 18, 2016, 5:41:55 PM
    Author     : cinta kamu
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="koneksi.koneksi"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Sistem Informasi Mahasiswa</title>
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
                 <form action="../ambilServlet">
            <h2>Insert ambil</h2>

            <% try {
                    koneksi kon = new koneksi();
                    Connection conn = kon.logOn();
                    conn.setAutoCommit(false);
                    String query = "select * from mata_kuliah";
                    Statement ps = conn.createStatement();
                    ResultSet rs = ps.executeQuery(query);

                    if (session.getAttribute("nim") != null) {
                        out.print("NIM :" + session.getAttribute("nim") + "<br>");
                    }%>
            <table border="1">
                <thead>
                <tr><td colspan =5>
                        <%if (session.getAttribute("nim") != null) {%>
                        NIM :<input type="text" name="nim" value="<%out.print(session.getAttribute("nim"));%>">

                        <%} %>

                    </td></tr>
                <tr><th>Kode Mata Kuliah</th>
                    <th>Nama Mata Kuliah</th>
                    <th>Jumlah SKS</th>
                    <th>Kode Dosen</th>
                    <th>Pilih</th>
                </tr>  </thead>              
                <%   while (rs.next()) {   
                String kd_mk = rs.getString("kd_mk");    
                %>         
                <thead>
                <tr><th>
                      <%=kd_mk%>  
                    </th>
                    <th>
                        <%out.print(rs.getString("nama_mk"));%>
                    </th>
                    <th>
                        <%out.print(rs.getString("jumlah_sks"));%>
                    </th>
                    <th>
                        <% out.print(rs.getString("kode_dosen"));%>
                    </th>
                    <th><input type="radio" name="kd_mk" value="<%=kd_mk%>">

                    </th></tr></thead><%}%>
            </table>
            <%  //ps.close();
                    
                } catch (Exception ex) {
                    System.out.println("message: " + ex.getMessage());
                }
            %>
            <input type="submit" value="AMBIL">
        </form>

                </div>
                <div id="column">
                    <div class="subnav">


                    </div>
                </div>
                <div class="clear">

                </div>
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
