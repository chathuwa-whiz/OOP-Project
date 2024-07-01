# Online Vehicle Rental System CRUD Application

This project is a CRUD (Create, Read, Update, Delete) application developed as part of the Year 2 Semester 1 project. It provides a backend system using Java Servlets and a frontend interface using HTML, CSS, and JavaScript. The frontend design is based on resources from [MDBootstrap](https://mdbootstrap.com/) and [Free CSS](https://www.free-css.com/).

## Features

- **Create**: Add new customers to the system.
- **Read**: Retrieve information about customers from the database.
- **Update**: Modify existing data such customer information.
- **Delete**: Remove customers from the system.

## Technologies Used

- **Backend**: Java Servlets for handling server-side logic and database interactions.
- **Frontend**: HTML, CSS, JavaScript for building the user interface.
- **Database**: (MYSql).

## Setup Instructions

1. **Clone the repository**:
   ```
   https://github.com/chathuwa-whiz/OOP-Project.git
   cd OOP-Project
   ```

2. **Database Setup**:
    - Create a new database named `vehicle-rental`.
    - Import the database schema provided in `database/customers.sql`.
    - Update the database connection settings in `src/main/java/util/DBConnectionUtil.java`.

3. **Deployment**:
    - Deploy the application on a Java Servlet container like Apache Tomcat.

4. **Accessing the Application**:
    - Open a web browser and go to `http://localhost:8081/` (or the appropriate URL depending on your deployment configuration).

## Contributing

Contributions are welcome! If you find any issues or improvements, feel free to create an issue or submit a pull request.