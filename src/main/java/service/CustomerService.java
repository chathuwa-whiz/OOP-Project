package service;

import model.Customer;
import util.DBConnectionUtil;

import javax.swing.plaf.nimbus.State;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CustomerService {

    // By using a logger, developers can output informative messages, warnings, and error details during the execution of the application
    public static final Logger log = Logger.getLogger(CustomerService.class.getName());
    private static Connection connection;
    private static PreparedStatement preparedStatement;
    private static Statement statement;
    private static ResultSet resultSet;
    public static Customer customer; // public, because we can delete this customer object when user delete account
    private static int rowCount;

    public static int addCustomer(Customer customer) {
        try {
            connection = DBConnectionUtil.getDBConnection();
//            preparedStatement = connection.prepareStatement("INSERT INTO customers (firstName, lastName, userName, phone, email, password) VALUES (?,?,?,?,?,?)");
//            preparedStatement.setString(1, customer.getFirstName());
//            preparedStatement.setString(2, customer.getLastName());
//            preparedStatement.setString(6, customer.getUserName());
//            preparedStatement.setString(3, customer.getPhone());
//            preparedStatement.setString(4, customer.getEmail());
//            preparedStatement.setString(5, customer.getPassword());
//            rowCount = preparedStatement.executeUpdate();

            String sql = "INSERT INTO customers (firstName, lastName, userName, phone, email, password) VALUES ('"+customer.getFirstName()+"', '"+customer.getLastName()+"', '"+customer.getUserName()+"', '"+customer.getPhone()+"', '"+customer.getEmail()+"', '"+customer.getPassword()+"')";

            statement = connection.createStatement();

            rowCount = statement.executeUpdate(sql);

        }
        catch (SQLException | ClassNotFoundException e) {
            log.log(Level.SEVERE, e.getMessage());
        }
        finally {
            /*
             * Close prepared statement and database connectivity at the end of
             * transaction
             */
            try {
                if(statement != null) {
                    statement.close();
                }
            }
            catch(SQLException e) {
                log.log(Level.SEVERE, e.getMessage());
            }
        }
        return rowCount;
    }

    public static Customer getCustomer(String email, String password) {

        try {
            connection = DBConnectionUtil.getDBConnection();
            preparedStatement = connection.prepareStatement("SELECT * FROM customers WHERE email = ? AND password = ?");

            System.out.println("Email : "+email);
            System.out.println("Password : "+password);

            // set values
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);

            // execute query
            resultSet = preparedStatement.executeQuery();

            if(resultSet.next()) {
                // save data on model class
                customer = new Customer(
                        resultSet.getString("firstName"),
                        resultSet.getString("lastName"),
                        resultSet.getString("userName"),
                        resultSet.getString("phone"),
                        resultSet.getString("email"),
                        resultSet.getString("password")
                );
                customer.setId(resultSet.getInt("id"));
            }

        }
        catch (SQLException | ClassNotFoundException e) {
            log.log(Level.SEVERE, e.getMessage());
        }
        finally {
            /*
             * Close prepared statement and database connectivity at the end of
             * transaction
             */
            try {
                if(preparedStatement != null) {
                    preparedStatement.close();
                }
                if(connection != null) {
                    connection.close();
                }
            }
            catch(SQLException e) {
                log.log(Level.SEVERE, e.getMessage());
            }
        }

        // return result set to servlet page
        return customer;
    }

    public static int updateCustomer(Customer customer) {
        try {
            connection = DBConnectionUtil.getDBConnection();

            preparedStatement = connection.prepareStatement("UPDATE customers SET firstName = ?, lastName = ?, phone = ?, email = ?, password = ? WHERE userName = ?");

            preparedStatement.setString(1, customer.getFirstName());
            preparedStatement.setString(2, customer.getLastName());
            preparedStatement.setString(3, customer.getPhone());
            preparedStatement.setString(4, customer.getEmail());
            preparedStatement.setString(5, customer.getPassword());
            preparedStatement.setString(6, customer.getUserName());

            rowCount = preparedStatement.executeUpdate();

            if(rowCount > 0) {
                System.out.println("Customer Updated Successfully");
            }
            else {
                System.out.println("No Customer found with Username " + customer.getUserName());
            }

        }
        catch (Exception e) {
            System.err.println("Error updating customer : " + e.getMessage());
        }

        return rowCount;
    }

    public static int deleteCustomer() {
        try {
            connection = DBConnectionUtil.getDBConnection();

            preparedStatement = connection.prepareStatement("DELETE FROM customers WHERE userName = ?");

            preparedStatement.setString(1, customer.getUserName());

            rowCount = preparedStatement.executeUpdate();
        }
        catch (Exception e) {
            System.out.println("Error deleting customer : " + e.getMessage());
        }

        return rowCount;
    }
}
