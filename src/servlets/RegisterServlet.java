package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "register", value = "/register")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

    }
        private static final long serialVersionUID = 1L;

        protected void doPost(HttpServletRequest request,
                              HttpServletResponse response)
                throws ServletException, IOException {
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String full_name = request.getParameter("full_name");
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con =
                        DriverManager.
                                getConnection(
                                        "jdbc:mysql://localhost:3306/sprint2",
                                        "root", "root");
                PreparedStatement ps =
                        con.prepareStatement
                                ("INSERT INTO users" +
                                        " (email, password, full_name) VALUES (?, ?, ?)");
                ps.setString(1, email);
                ps.setString(2, password);
                ps.setString(3, full_name);
                ps.executeUpdate();
                response.sendRedirect("login.jsp");
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

