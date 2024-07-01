package customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Customer;
import service.CustomerService;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("username");
        String password = request.getParameter("password");

        // save logged user data to model class
        Customer customer = CustomerService.getCustomer(email, password);

        if(customer != null) {
            // create new session
            HttpSession session = request.getSession();
            session.setAttribute("name", customer.getFirstName());
            session.setAttribute("customer", customer);

            // set user object as an attribute in the request scope
            request.setAttribute("customer", customer);

            // forward to index.jsp page
            response.sendRedirect("pages/customerHome.jsp");
        }
        else {
            System.out.println("customer is null");
            response.sendRedirect("index.jsp");
        }

    }
}
