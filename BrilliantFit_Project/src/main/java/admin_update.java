

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@MultipartConfig(
	    fileSizeThreshold = 1024 * 1024 * 1,  // 1 MB
	    maxFileSize = 1024 * 1024 * 10,        // 10 MB
	    maxRequestSize = 1024 * 1024 * 100     // 100 MB
	)

public class admin_update extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public admin_update() {
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
        String calorie = request.getParameter("calorie");
       
       

        Part filePart = request.getPart("image");
        InputStream fileContent = filePart.getInputStream();
        byte[] img = fileContent.readAllBytes();
        
        
        try {
            // Load MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection to the database
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/j2ee", "root", "steelheart");

            // Insert the product details into the database
            String sql = "update product set cid=?, image=?, calorie=? where name=?";
            PreparedStatement st = con.prepareStatement(sql);
            
            st.setString(1,cid); // Set category ID (integer)
            st.setBytes(2, img);
            st.setString(3, calorie);
            st.setString(4, name);
            st.executeUpdate();
            System.out.print("Update Successfully");

            st.executeUpdate();
            
            RequestDispatcher r = request.getRequestDispatcher("admin_upload.jsp");
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
