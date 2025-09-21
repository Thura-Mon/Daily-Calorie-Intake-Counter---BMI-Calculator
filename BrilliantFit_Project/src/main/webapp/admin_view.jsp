<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Base64"%>

    <!DOCTYPE html>
<html>

<head>
    <title>Calories</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" >
    <link rel="stylesheet" href="dashboard.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="https://fonts.googleapis.com/css2?family=Anta&display=swap" rel="stylesheet">

</head>

<body>
    
     <%   
     
     int categoryCount =0, pcount=0, usercount=0 ;
     
     try {
            // Load MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection to the database
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/j2ee", "root", "steelheart");
            
            
        
          String getsql = "select count(*) from category;";
          PreparedStatement ast = con.prepareStatement(getsql);
          ResultSet rs = ast.executeQuery();
          
          if (rs.next()) {
              categoryCount = rs.getInt(1); // Get count of categories
          } // category count

          
        
          
          %>
     
          <div class="header">
          
          <div id="main-content">
              <div class="left-section">
                  <div class="OpenSideBar"><button class="open" onclick="toggleSidebar()"><img src="sidebar1.jpg" class="sidebar_icon" ></button>
                  </div>
              
                  <div> <img src="blf_logo.jpg" width="50px" height="100px" class="teamlogo"></div>
              </div></div>
          <div class="content">
              <div class="row g-3 my-2">
                  <div class="col-md-3">
                      <div class="p-3 bg-success-subtle shadow-5m d-flex justify-content-around align-items-center rounded">
                          <div>
                              <h3 class="fs-2 text-success"><%=categoryCount %></h3>
                              <a href ="upload_category.jsp" class="fs-3 text-success">Categorys</a>
                          </div>
                          <i class="fa-solid fa-users text-success fs-5"></i>
                      </div>
                  </div>
                       <%
     
     ast.close();
     
      con.close();
     
     
        }

   catch (Exception e) {
      e.printStackTrace();
      out.print("Error: " + e.getMessage());
  }
  
    try {
            // Load MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection to the database
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/j2ee", "root", "steelheart");
            
            
        
          String getsql = "select count(*) from product;";
          PreparedStatement ast = con.prepareStatement(getsql);
          ResultSet rs = ast.executeQuery();
          
          if (rs.next()) {
              pcount = rs.getInt(1); // Get count of categories
          } // category count%>
          
  
                  <div class="col-md-3">
                      <div class="p-3 bg-success-subtle shadow-5m d-flex justify-content-around align-items-center rounded">
                          <div>
                              <h3 class="fs-2 text-success"><%=pcount %></h3>
                              <a href ="admin_upload.jsp" class="fs-3 text-success">Products</a>
                          </div>
                          <i class="fa-solid fa-gift text-success fs-5"></i>
                      </div>
                  </div>
                  
     <%
     ast.close();
     
      con.close();
    }
   catch (Exception e) {
      e.printStackTrace();
      out.print("Error: " + e.getMessage());
  } %>
  
  <%  try {
            // Load MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection to the database
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/j2ee", "root", "steelheart");
            
            
        
          String getsql = "select count(*) from user;";
          PreparedStatement ast = con.prepareStatement(getsql);
          ResultSet rs = ast.executeQuery();
          
          if (rs.next()) {
              usercount = rs.getInt(1); // Get count of categories
          } // category count%>
  
              <div class="col-md-3">
                  <div class="p-3 bg-success-subtle shadow-5m d-flex justify-content-around align-items-center rounded">
                      <div>
                          <h3 class="fs-2 text-success"><%=usercount %></h3>
                          <a href ="user.jsp" class="fs-3 text-success">Users</a>
                      </div>
                      <i class="fa-solid fa-users text-success fs-5"></i>
                  </div>
              </div>
              
          </div>
      </div>
       <%
     ast.close();
     
      con.close();
     

    }

   catch (Exception e) {
      e.printStackTrace();
      out.print("Error: " + e.getMessage());
  } %>
      </div>
 
    
    
<div id="sidebar">
        <div class="sidebarHeader">
            <div><img src="blf_logo.jpg" class="INteamlogo"></div>
                <div><button id="close-btn" onclick="toggleSidebar()" ><img src="cross.jpg" class="cross">
            </button></div>
        </div>
        <div class="line"></div>
        <a href="admin_view.jsp">
            <div class="options">
                <p><i class="fas fa-house"></i>&nbsp;Dashboard</p>
            </div>           
        </a>
        <div class="line"></div>
        
        <a href="upload_category.jsp">
            <div class="options">
                <p><i class="fa-solid fa-utensils"></i>&nbsp;Categorys</p>
            </div>           
        </a>    
                   
        <div class="line"></div>
        
        <a href="upload_product.jsp">
            <div class="options">
                <p><i class="fa-solid fa-utensils"></i>&nbsp;Products</p>
            </div>           
        </a>
        
        <div class="line"></div>
        <a href="user.jsp">
            <div class="options">
                <p><i class="fa-solid fa-users"></i>&nbsp;Users</p>
            </div>           
        </a>
        <div class="line"></div>
        <a href="login.jsp">
            <div class="options">
                <p><i class="fa-solid fa-right-from-bracket"></i>&nbsp;Logout</p>
            </div>           
        </a>
    <script>
        function toggleSidebar() {
            var sidebar = document.getElementById('sidebar');
            sidebar.classList.toggle('open');
        }    
    </script>

</body>
</html>