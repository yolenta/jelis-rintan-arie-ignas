/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import Entity.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import koneksi.koneksi;

/**
 *
 * @author cinta kamu
 */
public class ambil_MkControl {

    public ResultSet totalSKS(String kd_mk) {
        try {
            koneksi kon = new koneksi();
            Connection conn = kon.logOn();
            String sql = "select jumlah_sks from mata_kuliah where kd_mk = '" + kd_mk + "'";
            Statement ps = conn.createStatement();
            ResultSet rs = ps.executeQuery(sql);
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(ambil_mk.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

    }

    public ResultSet DetailMataKuliah(String kd_mk) {

        try {
            koneksi kon = new koneksi();
            Connection conn = kon.logOn();
            String sql = "select * from mata_kuliah where kd_mk = '" + kd_mk + "'";
            Statement ps = conn.createStatement();
            ResultSet rs = ps.executeQuery(sql);
            return rs;

        } catch (SQLException ex) {
            Logger.getLogger(ambil_mk.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

    }

    public ResultSet tampilMataKuliah(String nimMahasiswa) {

        try {
            koneksi kon = new koneksi();
            Connection conn = kon.logOn();
            String sql = "select kd_mk from ambil_mk where nim = '" + nimMahasiswa + "'";
            Statement ps = conn.createStatement();
            ResultSet rs = ps.executeQuery(sql);
            return rs;

        } catch (SQLException ex) {
            Logger.getLogger(ambil_mk.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

    }

    public void simpanMataKuliah(String nimMahasiswa, String kode_mataKuliah) {
        try {
            koneksi kon = new koneksi();
            Connection conn = kon.logOn();
            conn.setAutoCommit(false);
            String sql = "insert into ambil_mk values(?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, nimMahasiswa);
            ps.setString(2, kode_mataKuliah);
            ps.executeUpdate();
            ps.close();
            conn.commit();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(matakuliah.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
