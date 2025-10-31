package connection;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/loginservlet")
public class User extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String enrollment = request.getParameter("enrollment");

        if (name != null && !name.trim().isEmpty() && enrollment != null && !enrollment.trim().isEmpty()) {

            // Session start
            HttpSession session = request.getSession(true);
            session.setAttribute("name", name);
            session.setAttribute("enrollment", enrollment);

            // ✅ Render ke liye safe redirect
            String redirectURL = request.getContextPath() + "/course.jsp";
            System.out.println("Redirecting to: " + redirectURL);
            response.sendRedirect(redirectURL);

        } else {
            out.println("<h3 style='color:red;'>Invalid name or enrollment number!</h3>");
            out.println("<a href='login.jsp'>Go back to Login</a>");
        }
    }
}
