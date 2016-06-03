<%@page import="control.CheckUser"%>
<%@page import="Entity.mahasiswa"%>
<%
            CheckUser a = new CheckUser();
            mahasiswa mahasiswa = new mahasiswa();
            String nim = request.getParameter("nim");
            String password = request.getParameter("password");

            mahasiswa.setNim(nim);
            mahasiswa.setPassword(password);
            String hasil = a.cek(mahasiswa);

            if (hasil == "1") {
                out.println(hasil);
                String UN = mahasiswa.getNim() + mahasiswa.getPassword();
                out.println("Berhasil : " + UN);
                session.setAttribute("nim", mahasiswa.getNim());
                response.sendRedirect("ambilMK.jsp");
            } else {
                response.sendRedirect("login.jsp?errmsg=error");
            }
%>