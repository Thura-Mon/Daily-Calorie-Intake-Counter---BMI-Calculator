

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
 * Servlet implementation class user
 */
public class user extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public user() {
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
		
		String email = request.getParameter("mail");
		String password = request.getParameter("pass");
		
		
		HttpSession sn = request.getSession();
		int check = 0;
		
		 try {
			    Class.forName("com.mysql.jdbc.Driver");
			    System.out.print("Driver OK");
			    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/j2ee","root","steelheart");
			    System.out.print("Connection OK");
			    
			    String sql = "select * from admin";
			    PreparedStatement st = con.prepareStatement(sql);
			    
			    ResultSet admin = st.executeQuery();
			    
			    while(admin.next()) {
			    	
			    	String n = admin.getString(1);
			    	String p = admin.getString(2);
			    	
			    	if(p.equals(password) && n.equals(email)) {
			    		response.sendRedirect("admin_view.jsp");
			    	}
			    }
			    
			    String u_sql = "select * from user";
			    PreparedStatement u_st = con.prepareStatement(u_sql);
			    
			    ResultSet user = u_st.executeQuery();
			    
			    
			    while(user.next()) {
			    	
			    	String n = user.getString("user_email");
			    	String p = user.getString("user_password");
			    	String name = user.getString(3);
			    	
			    	
			    	
			    	if(n.equals(email) && p.equals(password)){
			    		
			    		sn.setAttribute("name", name);
			    		check++;
			    	}
			    	
			    }
			    if(check!=0) {
			    	response.sendRedirect("welcome.jsp");    
			    }
			    else {
			    	response.sendRedirect("error.jsp");
			    }
		 }
		 catch(Exception e){
			 
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
