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

@WebServlet("/update_category")
public class update_category extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public update_category() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String cid = request.getParameter("cid");
        String oldName = request.getParameter("old-cname");
        String cname = request.getParameter("cname");

        Connection con = null;
        PreparedStatement st = null;

        try {
            // Load MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection to the database
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/j2ee", "root", "steelheart");

            out.print("Driver OK");

            // Update the category details in the database
            String sql = "UPDATE category SET cid=?, cname=? WHERE cname=?";
            st = con.prepareStatement(sql);
            
            st.setString(1, cid); // Set category ID
            st.setString(2, cname); // Set new category name
            st.setString(3, oldName); // Set old category name
            st.executeUpdate();
            
            RequestDispatcher r = request.getRequestDispatcher("upload_category.jsp");
            r.forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            out.print("Error: " + e.getMessage());
        } finally {
            try {
                if (st != null) st.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
