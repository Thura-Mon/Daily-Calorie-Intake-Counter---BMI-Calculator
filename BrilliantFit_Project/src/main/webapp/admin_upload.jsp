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
    <link rel="stylesheet" href="admin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="https://fonts.googleapis.com/css2?family=Anta&display=swap" rel="stylesheet">

<style>
    th{
    background-color: #007200;
    color:white;
    }
    .select{
    background-color: #007200;
    color: white;
    border: 1px solid white;
    }
    
</style>
</head>


    
    <div class="header">
        
        <div id="main-content">
            <div class="left-section">
                <div class="OpenSideBar"><button class="open" onclick="toggleSidebar()"><img src="sidebar1.jpg" class="sidebar_icon" ></button>
                </div>
            
                <div> <img src="blf_logo.jpg" width="50px" height="100px" class="teamlogo"></div>
            </div>      
        </div>
        <div class="content">
          <table>
                <thead>
                <th>P-id</th>
                <th>P-image</th>
                <th>Product-Name</th>
                <th>Calories</th>
                <th><select name="s1" id="s" class="select" onchange="window.location.href=this.value;">
                    <option value="" disable selected hidden class="action">&nbsp;Action</option>
                    <option value="insert_product.jsp" class="publish">Add Product</option>
                    <option value="admin_update.jsp" class="edit">Edit Products</option><option value="admin_delete.jsp" class="delete">Delete Products</option></select></th>
          
            </thead>
            <h2 class="product">Manage Products</h2>
    <%      try {
            // Load MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection to the database
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/j2ee", "root", "steelheart");
            
            
        
          String getsql = "select * from product";
          PreparedStatement ast = con.prepareStatement(getsql);
          
           ResultSet get = ast.executeQuery();

           while (get.next()) {
        	   String pid = get.getString("pid");
        	   String cid = get.getString("cid");
               String name = get.getString("name");
               Blob blob = get.getBlob("image");
               String cal = get.getString("calorie");
               if (blob != null) {
                 byte[] imageBytes = blob.getBytes(1, (int) blob.length());
                    String base64Image = Base64.getEncoder().encodeToString(imageBytes);
                    if(name!="0"){
                         
                    	%>  

                <tr>
                    <td><%= pid %></td>
                    <td><img src="data:image/jpeg;base64,<%= base64Image %>" style="width: 100px; height: 70px;"></td>
                     <td><%= name %></td>
                    <td><%= cal %></td>
                     <td></td>
                </tr>
               
              
       <%    
             }
           }
               }
           
         
           get.close();      
           ast.close();
           ast.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
            out.print("Error: " + e.getMessage());
        }
        %>
            
        </table>
        
         </div>
      
           
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
        
        <a href="admin_upload.jsp">
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
        </div>
        
        
    <script>
        function toggleSidebar() {
            var sidebar = document.getElementById('sidebar');
            sidebar.classList.toggle('open');
        }    
    </script>

</body>
</html>