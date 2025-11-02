package connection;

import java.io.IOException;
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

        // Create session
        HttpSession session = request.getSession();
        session.setAttribute("name", name);
        session.setAttribute("enrollment", enrollment);

        // Redirect to course.jsp (fixed for Render deployment)
        response.sendRedirect(request.getContextPath() + "/course.jsp");
    }
}
