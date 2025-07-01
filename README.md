# OMG.co - E-commerce Website Application

## Overview

OMG.co is a web-based e-commerce platform developed using ASP.NET (frontend), C# (backend), and MySQL (database). The application enables users to browse, order, and manage products with a user-friendly interface, supporting dashboards for both customers and administrators. Typical use cases include inventory management, customer orders, transaction processing, and generating sales/performance reports.

---

## Features

- **User Registration & Authentication**
  - Users can register with a username, password, name, and email.
  - Passwords are hashed (MD5) before being stored in the database.
  - Role-based authentication (admin/customer) with session management.
  - Login and registration validation with feedback.

- **Product Management (Admin)**
  - Add, update, and view product details including name, price, description, and image.
  - Manage product status (e.g., available/not available).
  - Product images are uploaded to the server and displayed in the UI.

- **Shopping & Transactions (Customer)**
  - Browse available products, view product details.
  - Add/remove products from the shopping cart.
  - Checkout and create transactions for selected products.

- **Account Management**
  - Users can edit their account information.
  - Admins can view and edit user account status and roles.

- **Reporting**
  - Generate sales and performance reports.
  - Dashboard for administrators and customers.

- **Database Interaction**
  - Centralized `DatabaseClass` for MySQL queries (insert, update, delete, select).
  - Uses parameterized queries for database operations.

---

## Database Structure

The application relies on a MySQL database named `it114l_mp` with at least the following tables:

- `acc_info_tbl`: Stores user account information (username, password (MD5), role, state, email).
- `user_info_tbl`: Stores user profile data (username, first name, last name).
- `prod_info_tbl`: Stores product information (product id, name, price, image path, status, description).
- Additional tables may include transaction/order and report data.

*Note:* The database connection string assumes `localhost`, user `root`, and an empty password. Update this as appropriate for your environment.

---

## Project Structure

- **Frontend:** ASP.NET Web Forms (`.aspx` and `.aspx.cs` files)
- **Backend:** C# (code-behind files)
- **Database:** MySQL (accessed via MySql.Data.MySqlClient)
- **Assets:** Bootstrap for styling, image uploads for products

---

## Setup and Deployment

### Prerequisites

- Visual Studio (with ASP.NET support)
- MySQL Server
- MySQL Connector/NET (for C#)
- Bootstrap (already included in project)

### Steps

1. **Clone the repository**
   ```sh
   git clone https://github.com/iskaiflakes/IT114L_MP.git
   ```

2. **Set up the database**
   - Create a MySQL database named `it114l_mp`.
   - Run the SQL scripts (if provided) to create required tables (`acc_info_tbl`, `user_info_tbl`, `prod_info_tbl`, etc.).
   - Update the connection string in `DatabaseClass.cs` if your MySQL credentials differ:
     ```csharp
     string connectionStr = "server=localhost;user id=root; database=it114l_mp;Password=";
     ```

3. **Open the project in Visual Studio**
   - Open the solution file or the main project folder.
   - Restore NuGet packages if needed.

4. **Build and run**
   - Build the solution.
   - Run using IIS Express or your preferred ASP.NET hosting option.

5. **Access the application**
   - Navigate to `http://localhost:[port]/IT114_MP/IT114_MP_LOGIC/HomePage.aspx` or the root as configured in your project.

---

## Usage

- **Register:** Use the 'Register' link on the HomePage or Login page to create a new account.
- **Login:** Enter your credentials to log in as a customer or admin.
- **Admin Panel:** If logged in as admin, access product and account management features.
- **Shopping:** If logged in as customer, browse, add to cart, and checkout products.

---

## Development Notes

- **Security:** Passwords are hashed using MD5. Consider using a stronger hash (e.g., bcrypt) for production.
- **Sessions:** User roles and usernames are stored in session variables for access control.
- **Images:** Product images are uploaded and referenced in the `/images/` directory.
- **Customization:** Update the connection string or add further validation as needed for your deployment.

---

## Screenshots

![Dashboard](https://github.com/user-attachments/assets/f4a4d082-b65b-434f-9359-660992f655ae)
![Admin Panel](https://github.com/user-attachments/assets/40129640-ca54-46aa-8071-a174c3898ba7)
![Product View](https://github.com/user-attachments/assets/11b0547d-e1cc-4bbe-872f-c3091474c9e9)

---

## License

[Specify license here]

---

## Authors

- [iskaiflakes](https://github.com/iskaiflakes)
- Project collaborators (see commit history)

---

## Acknowledgements

- Bootstrap for UI components
- MySQL Connector/NET
