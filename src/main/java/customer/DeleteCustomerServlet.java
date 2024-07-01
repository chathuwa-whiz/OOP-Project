package customer;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Customer;
import service.CustomerService;

import java.io.IOException;
import java.util.List;

@WebServlet("/delete")
public class DeleteCustomerServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // delete customer
        int rowCount = CustomerService.deleteCustomer();

        if(rowCount > 0) {
            // remove session
            HttpSession session = request.getSession();
            session.removeAttribute("name");
            session.removeAttribute("customer");
            CustomerService.customer = null;

            // Redirect back to the login page
            response.sendRedirect("index.jsp");
        }
        else {
            System.out.println("Customer deletion failed");
        }
    }
}
