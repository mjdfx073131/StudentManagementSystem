package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
    static String ip = "127.0.0.1";
    static int port = 3306;
    static String database = "student";
    static String encoding = "UTF-8";
    static String loginName = "root";
    static String password = "KERRY33022";

    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

    }
    public static Connection getConnection() throws SQLException {
        String url = String.format("jdbc:mysql://127.0.0.1:3306/students");
        try {
            //System.out.println("\nConnected to MySQL!");
            return DriverManager.getConnection(url, loginName, password);

        } catch (SQLException e) {
            System.out.println("Message: " + e.getMessage());
            System.out.println("\nNOT Connected to MYSQL!");

        }

        return DriverManager.getConnection(url, loginName, password);
    }

    public static void main(String[] args) throws SQLException {
        System.out.println(getConnection());
//        Connection con;
//        String url = String.format("jdbc:mysql://127.0.0.1:3306/students");
//        try {
//            con = DriverManager.getConnection(url, loginName, password);
//            con.setAutoCommit(false);
//            System.out.println("\nConnected to Oracle!");
//        } catch (SQLException e) {
//            System.out.println("Message: " + e.getMessage());
//
//        }


    }
}
