

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Servlet implementation class register
 */
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register() {
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
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		
		HttpSession sn = request.getSession();
		
		 try {
			    Class.forName("com.mysql.jdbc.Driver");
			    System.out.print("Driver OK");
			    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/j2ee","root","steelheart");
			    System.out.print("Connection OK");
			    
			   
			    
			    String a_sql = "select * from admin";
			    PreparedStatement ast = con.prepareStatement(a_sql);
			    int checka = 0;
			    ResultSet admin = ast.executeQuery();
			    
			    while(admin.next()) {
			    	
			    	String n = admin.getString(1);
			    	String p = admin.getString(2);
			    	
			    	if(p.equals(password) && n.equals(email)) {
			    		checka++;
			    	}
			    }

			    
			   
			    			    
			    
			    String sql = "select * from user";
			    PreparedStatement st = con.prepareStatement(sql);
			    ResultSet user = st.executeQuery(); // for checking
			    
			    int check=0;
			    
			    
			    
			    while(user.next()) {
			    	
			    	String n = user.getString(1);
			    	String p = user.getString(2);
			    
			    	
			    	if(n.equals(email) && p.equals(password)) {
			    		check++;
			    	}
			    }   
			    
			    
			    if(checka!=0 || check!=0) {
			    	RequestDispatcher rd=request.getRequestDispatcher("register.jsp");
			    	rd.include(request, response);
			    	out.print("<body><script>alert(\"This account has already existed!\")</script></body>");
			    }
			    			    		    
			    
			    else{
			    	String set = "insert into user values (?, ?, ?)";
					PreparedStatement s = con.prepareStatement(set); 
			    	s.setString(1, email);
			    	s.setString(2, password);
			    	s.setString(3, name);	  
			    	s.executeUpdate();
			    	
			    	sn.setAttribute("name", name);
			    	response.sendRedirect("welcome.jsp");
			    	
			    	
			    }
			    
			    
			    
			    
			    
			    
			    
		 }
		 catch(Exception e) {
			 
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
