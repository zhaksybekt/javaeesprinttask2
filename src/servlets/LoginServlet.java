package servlets;

import db.DBConnectionLogin;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
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
            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;
            try {
                conn = DBConnectionLogin.getConnection();
                pstmt = conn.prepareStatement("SELECT * FROM users WHERE email = ? AND password = ? ");
                pstmt.setString(1, email);
                pstmt.setString(2, password);
                rs = pstmt.executeQuery();
                if (rs.next()) {
                    request.getSession().setAttribute("email", email);
                    response.sendRedirect("user.jsp");
                } else {
                    response.sendRedirect("login.jsp");
                }

            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    if (rs != null) {
                        rs.close();
                    }
                    if (pstmt != null) {
                        pstmt.close();
                    }
                    if (conn != null) {
                        DBConnectionLogin.closeConnection(conn);
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }

