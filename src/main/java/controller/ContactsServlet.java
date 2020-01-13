package controller;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/contacts")
public class ContactsServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        Contacts allContacts = DaoFactory.getContactsDao();
        List<Contact> contacts = allContacts.getContacts();
        request.setAttribute("contacts", contacts);
        request.getRequestDispatcher("ContactsManager/ContactsIndex.jsp").forward(request, response);
    }
}
