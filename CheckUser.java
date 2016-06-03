package control;

import koneksi.koneksi;
import Entity.mahasiswa;
import java.sql.*;

public class CheckUser {

    private koneksi conn = new koneksi();

    public String cek(mahasiswa mahasiswa) {
        String Hasil = "0";
        Connection conDB = null;
        try {
            conDB = conn.logOn();
            String query = "SELECT * from mahasiswa where nim=? and password=?";
            PreparedStatement st = conDB.prepareStatement(query);
            st.setString(1, mahasiswa.getNim());
            st.setString(2, mahasiswa.getPassword());
           
            try {
                ResultSet rs =    st.executeQuery();
                if (rs.next()) {
                Hasil = "1";
                }
            } catch (SQLException e) {
                System.out.println("Error " + e.getMessage());
                Hasil = "0";
            }
        } catch (SQLException e) {
            System.out.println("Error" + e.getMessage());
            Hasil = "0";
        }
        return Hasil;
    }}
