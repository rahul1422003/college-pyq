package connection;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/loginservlet")
public class User extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get form data
        String name = request.getParameter("name");
        String enrollment = request.getParameter("enrollment");
        String semester = request.getParameter("semester");

        // ✅ Enrollment validation rule
        String pattern = "^L[A-Za-z]{6}[0-9]{5}$";

        if (enrollment == null || !enrollment.matches(pattern)) {
            request.setAttribute("error", "Invalid Enrollment Number! (It should start with L + 6 letters + 5 digits)");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        // ✅ Save data to session
        HttpSession session = request.getSession();
        session.setAttribute("name", name);
        session.setAttribute("enrollment", enrollment);
        session.setAttribute("semester", semester);

        // ✅ Save data to database
        try (Connection conn = DBConnection.getConnection()) {
            if (conn != null) {
                String sql = "INSERT INTO users (name, enrollment, semester) VALUES (?, ?, ?)";
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1, name);
                ps.setString(2, enrollment);
                ps.setString(3, semester);
                ps.executeUpdate();
                ps.close();
            } else {
                System.out.println("❌ Database connection is null.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "Database error: " + e.getMessage());
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        // ✅ Redirect to course.jsp after successful login
        response.sendRedirect(request.getContextPath() + "/course.jsp");
    }
}
