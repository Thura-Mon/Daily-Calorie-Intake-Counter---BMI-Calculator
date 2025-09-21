

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


public class delete_user extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
        public delete_user() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		
        try {
            // Load MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection to the database
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/j2ee", "root", "steelheart");

            // delete the product details from the database
            String sql = "delete from user where user_email=?";
            PreparedStatement st = con.prepareStatement(sql);
            
            st.setString(1, name);
            st.executeUpdate();
            System.out.print("Delete Successfully");

            st.executeUpdate();
            
            RequestDispatcher r = request.getRequestDispatcher("user.jsp");
            r.forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            out.print("Error: " + e.getMessage());
        }

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
