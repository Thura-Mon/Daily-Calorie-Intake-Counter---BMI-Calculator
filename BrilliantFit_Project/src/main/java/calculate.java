

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;


public class calculate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public calculate() {
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
	
//		int [] arr = new int [100];
//		
//		try {
//		
//	    
//	    
//	    HttpSession s = request.getSession();
//	    
//	    
//	    
//	    for(int i = 0; i<arr.length; i++) {
//	    	
//	    	int cal = Integer.parseInt(request.getParameter("cal"));
//		    int qty = Integer.parseInt(request.getParameter("qty"));
//	    	
//		    if(arr[i]==0) {
//	    		arr[i] = cal*qty;
//	    		
//	    		break;
//	    	}
//	    	
//		    
//	    }
//	    s.setAttribute("total", arr);
////	    RequestDispatcher r = request.getRequestDispatcher("meal.jsp");
////		r.forward(request, response);
//	    
//	   
//	    
//		} catch (Exception e) {
//			
////			RequestDispatcher r = request.getRequestDispatcher("meal.jsp");
////    		r.forward(request, response);
//		}
		
	    
	    
	    
//	    int a = (int) s.getAttribute("total");
//	    		out.print(a);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
