package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {

    private Connection conn;
    private String url = "jdbc:oracle:thin:@172.23.9.185:1521:orcl";
    private String user = "mhs145314015";
    private String password = "mhs145314015";

    public DatabaseConnection(String url, String user, String password) {
        this.url = url;
        this.user = user;
        this.password = password;

    }

    public DatabaseConnection() {
    }

    public Connection logOn() {
        conn = null;
        try {
            DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
            conn = DriverManager.getConnection(url, user, password);
            System.out.println("Connected Successded");
        } catch (SQLException e) {
            System.out.println("Connection Error : " + e.getMessage());
        }
        return conn;
    }

    public void logOff() {
        try {
            if (conn != null) {
                conn.close();
                System.out.println("Connection Closed");
            }
        } catch (SQLException e) {
            System.out.println("Connection Error : " + e.getMessage());
        }
    }
    public static void main(String args[]){
       DatabaseConnection cm = new DatabaseConnection();
       cm.logOn();
    }

    void getClosed() {
        throw new UnsupportedOperationException("Not yet implemented");
    }

    Object getConnection() {
        throw new UnsupportedOperationException("Not yet implemented");
    }
}
