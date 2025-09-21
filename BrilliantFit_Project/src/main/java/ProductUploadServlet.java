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
import java.sql.ResultSet;
import java.sql.Blob;
import java.util.Base64;

@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 1,  // 1 MB
    maxFileSize = 1024 * 1024 * 10,        // 10 MB
    maxRequestSize = 1024 * 1024 * 100     // 100 MB
)
public class ProductUploadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public ProductUploadServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Get parameters from the request
        String pname = request.getParameter("name");
        String cid = request.getParameter("cid");
        String calorie = request.getParameter("calorie");

        // Get the image file from the request
        Part filePart = request.getPart("image");
        InputStream fileContent = filePart.getInputStream();
        byte[] img = fileContent.readAllBytes();

        // Database operations
        try {
            // Load MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection to the database
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/j2ee", "root", "steelheart");

            // Insert the product details into the database
            String sql = "INSERT INTO product (cid, name, image, calorie) VALUES (?, ?, ?, ?)";
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, cid);
            statement.setString(2, pname);
            statement.setBytes(3, img);
            statement.setString(4, calorie);
            statement.executeUpdate();

          RequestDispatcher r = request.getRequestDispatcher("admin_upload.jsp");
          r.forward(request, response);
          
          
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
            out.print("Error: " + e.getMessage());
        }
    }
}
