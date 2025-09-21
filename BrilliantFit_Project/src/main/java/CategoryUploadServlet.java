

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

/**
 * Servlet implementation class CategoryUploadServlet
 */
public class CategoryUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoryUploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	
		 response.setContentType("text/html");
	        PrintWriter out = response.getWriter();

	        String cid = request.getParameter("cid");
	        String name = request.getParameter("name");
	        
		
	        
	        
	        try {
	            // Load MySQL JDBC driver
	            Class.forName("com.mysql.cj.jdbc.Driver");

	            // Establish connection to the database
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/j2ee", "root", "steelheart");

	            // Insert the product details into the database
	            String sql = "insert into category (cid, cname) values (?, ?)";
	            PreparedStatement statement = con.prepareStatement(sql);
	            statement.setString(1, cid);
	            statement.setString(2, name);
	            statement.executeUpdate();
	            
	            RequestDispatcher r = request.getRequestDispatcher("upload_category.jsp");
	            r.forward(request, response);
	            
	            
	              con.close();

	          } catch (Exception e) {
	              e.printStackTrace();
	              out.print("Error: " + e.getMessage());
	          }
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
