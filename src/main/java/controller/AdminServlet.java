package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/admin")
public class AdminServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/rejected.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sessionCode = (String) request.getSession().getAttribute("access_code");
        String requestCode = (String) request.getParameter("code");
        System.out.println(sessionCode);
        System.out.println(requestCode);
        if (sessionCode == null || requestCode == null) {
            request.getRequestDispatcher("/WEB-INF/rejected.jsp").forward(request, response);
        } else if (requestCode.equals(sessionCode)) {
            request.getRequestDispatcher("/WEB-INF/admin.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("/WEB-INF/rejected.jsp").forward(request, response);
        }

    }
}
