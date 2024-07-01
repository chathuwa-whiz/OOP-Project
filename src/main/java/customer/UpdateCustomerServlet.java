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

@WebServlet("/update")
public class UpdateCustomerServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String userName = request.getParameter("userName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");

        // save data to model class
        Customer customer = new Customer(firstName, lastName, userName, phone, email, password);

        // add data to database
        int rowCount = CustomerService.updateCustomer(customer);

        if(rowCount > 0) {
            // remove session
            HttpSession session = request.getSession();
            session.removeAttribute("name");
            response.sendRedirect("index.jsp");
//            RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        }
        else {
            // handle errors
            System.out.println("something wrong with data inserting to the database");
        }
    }
}
