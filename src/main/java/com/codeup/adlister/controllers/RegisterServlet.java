package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
        // TODO: show the registration form
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // TODO: ensure the submitted information is valid
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String hash = BCrypt.hashpw(password, BCrypt.gensalt());
        if (DaoFactory.getUsersDao().findByUsername(username) == null) {
            if (username == null || password == null || email == null || !email.matches("@")) {
                response.sendRedirect("/register");
            } else {
                User newUser = new User(username, email, hash);
                DaoFactory.getUsersDao().insert(newUser);
                request.getSession().setAttribute("isLoggedin", true);
                request.getSession().setAttribute("user", newUser);
                response.sendRedirect("/profile");

            }

        } else {
            response.sendRedirect("/register");
        }
    }
}
