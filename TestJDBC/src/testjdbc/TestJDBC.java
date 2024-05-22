package testjdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class TestJDBC {

    public static void main(String[] args) throws SQLException {
        String url = "jdbc:mysql://localhost:3306/testjdbc";
        String user = "root";
        String password = "1234";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection connection = DriverManager.getConnection(url, user, password);

            PreparedStatement ps = connection.prepareStatement("SELECT * FROM student");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                System.out.println(rs.getInt("Id") + " " + rs.getString("Name") + " "
                        + rs.getString("Email") + " " + rs.getString("Address"));
            }  
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(TestJDBC.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
