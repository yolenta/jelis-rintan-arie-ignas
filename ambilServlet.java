package control;

import Entity.*;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import koneksi.koneksi;

/**
 *
 * @author cinta kamu
 */
@WebServlet(name = "ambilServlet", urlPatterns = {"/ambilServlet"})
public class ambilServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            PrintWriter out = response.getWriter();
            String nim = request.getParameter("nim");
            String kd_mk = request.getParameter("kd_mk");
            String nama_mk = request.getParameter("nama_mk");
            ambil_MkControl mk = new ambil_MkControl();
            mk.simpanMataKuliah(nim, kd_mk);
            out.println("Mata Kuliah yang telah");
            ResultSet rs = mk.tampilMataKuliah(nim);

            int total;
            int totals = 0;
            
            while (rs.next()) {

                rs.getString("kd_mk");
                ResultSet rs3 = mk.DetailMataKuliah(rs.getString("kd_mk"));
                while (rs3.next()) {
                    out.println("KODE SKS         : "+rs3.getString("kd_mk"));
                    out.println("NAMA MATA KULIAH : "+rs3.getString("nama_mk"));
                    out.println("JUMLAH SKS       : "+rs3.getString("jumlah_SKS"));
                    out.println("KODE DOSEN       : "+rs3.getString("kode_dosen"));
                    out.println("--------------------------------------------------------------------");
                }
                ResultSet rs2 = mk.totalSKS(rs.getString("kd_mk"));
                while (rs2.next()) {                    
                    total = rs2.getInt("jumlah_sks");
                    totals = totals + total;
                }

            }
            out.println("TOTAL SKS ANDA   : "+totals);
            

        } catch (SQLException ex) {
            System.out.println("MATA KULIAH SUDAH DIAMBIL" + ex.getMessage());

            Logger.getLogger(ambilServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
