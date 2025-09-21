<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.Base64"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Calories</title>
    <link rel="stylesheet" href="home111.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://fonts.googleapis.com/css2?family=Anta&display=swap" rel="stylesheet">
    <style>
        #cal {
            border: none;
            color: white;
            font-size: 20px;
            background-color: rgba(255, 255, 255, 0);
            width: 40px;
        }
        #but {
            border-radius: 10px;
            border: 1px solid black;
            color: green;
            background-color: white;
            width: 80px;
            height: 35px;
            margin-left: 50px;
        }
        #total {
            float: center;
        }
        #p {
            padding-left: 80px;
        }
        
    .btn-primary1{
    margin-left: 170px;
    color:darkgreen;
    width:100%;
    height:42px;
    background-color: transparent;
    border: solid 1px darkgreen;
    border-radius: 5px;
    
    }
    
    .btn-primary1:hover{
     color:white;
     background-color:darkgreen;
     transition:0.5s;
     box-shadow:  30px darkgreen;
     cursor: pointer;
    }
    
    .btn-primary1:active{
     background-color: rgb(169, 255, 180) ;
     transition: -0.5s;
    }

    
    </style>
</head>
<body>
    <div class="header">
        <div id="main-content">
            <div class="left-section">
                <div class="OpenSideBar">
                    <button class="open" onclick="toggleSidebar()">
                        <img src="sidebar1.jpg" class="sidebar_icon">
                    </button>
                </div>
                <div>
                    <img src="blf_logo.jpg" width="50px" height="100px" class="teamlogo">
                </div>
            </div>
           <p style="color: darkgreen; padding-right: 50%; margin-top: 15px;">Brilliant Fit</p>
           <div class="middle_section"><a href="session.jsp"><button class="btn-primary1"><i class="fa-solid fa-calculator"></i>&nbsp;Total Calories</button></a>
           </div>
        </div>
        <div class="menu">
            <%
                Connection con = null;
                PreparedStatement pst = null;
                ResultSet rs = null;
                
                try {
                    // Load MySQL JDBC driver
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    
                    // Establish connection to the database
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/j2ee", "root", "steelheart");
                    
                    String getsql = "SELECT * FROM product WHERE cid='c3'";
                    pst = con.prepareStatement(getsql);
                    rs = pst.executeQuery();
                    
                    while (rs.next()) {
                        String name = rs.getString("name");
                        Blob blob = rs.getBlob("image");
                        String cal = rs.getString("calorie");
                        
                        if (blob != null) {
                            byte[] imageBytes = blob.getBytes(1, (int) blob.length());
                            String base64Image = Base64.getEncoder().encodeToString(imageBytes);
                            
                            if (!"0".equals(name)) {
            %>  
           <div class="food-items" > 
                <img src="data:image/jpeg;base64,<%= base64Image %>">
                <div class="deails">
                    <div class="details-sub">
                        <h5><%=name %></h5>
                        <!-- <h5 class="price" value>Calories 325cal</h5> -->
                        <form name="f" id="myForm" action="snack.jsp">
                           &nbsp;&nbsp;&nbsp; <input type="text" name="calorie" value="<%= cal %>" disabled id="cal">Cal/100g
                           
                            <input type="hidden" name="cal" value="<%=cal%>">
                    </div>
                        
                       &nbsp; <p>Qty:</p><input type="number" name="qty" class="price1"  min="1" value="1"><br>
                       
      
                <input type="submit" class="btn-primary" value="Count">
		                 
                    </form>
                </div>
                </div>  
                
               
                
                
                 <%    
             } 
          
               }
               
              
               
               }
           
         
           
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
            out.print("Error: " + e.getMessage());
        }
        %>

  </div>
</div>
    <div id="sidebar">
        <div class="sidebarHeader">
            <div><img src="blf_logo.jpg" class="INteamlogo"></div>
                <div><button id="close-btn" onclick="toggleSidebar()" ><img src="cross.jpg" class="cross">
            </button></div>
        </div>
        <div class="line"></div>
        <a href="home.jsp">
            <div class="options">
                <p><i class="fas fa-house"></i>&nbsp;Home</p>
            </div>           
        </a>
       
                   
        <div class="line"></div>
        <h3 style="color: darkgreen;">Catagories</h3>
        <a href="meal.jsp">
            <div class="options">
                <p><i class="fa-solid fa-utensils"></i>&nbsp;Meal</p>
            </div>           
        </a>
        <a href="fruit.jsp">
            <div class="options">
                <p><i class="fa-solid fa-carrot"></i></i>&nbsp;Fruits</p>
            </div>           
        </a>
        <a href="snack.jsp">
            <div class="options">
                <p><i class="fa-solid fa-pizza-slice"></i>&nbsp;Snacks & <i class="fa-solid fa-champagne-glasses"></i>&nbsp;Drinks</p>
            </div>           
        </a>
        
         <div class="line"></div>
        <a href="BMI.jsp">
            <div class="options">
                <p><i class="fa-solid fa-calculator"></i>&nbsp;BMI Calculator</p>
            </div>      
            
                        <div class="line"></div>
        <a href="about.jsp">
            <div class="options">
                <p><i class="fa-solid fa-users"></i>&nbsp;About us</p>
            </div>      
            
        <a href="logout">
            <div class="options">
                <p><i class="fa-solid fa-right-from-bracket"></i>&nbsp;Logout</p>
            </div>           
        </a></div>
        
        
    <script>
        function toggleSidebar() {
            var sidebar = document.getElementById('sidebar');
            sidebar.classList.toggle('open');
        }        
   </script>
        
 
 <%
    // Initialize session attributes if not present
    HttpSession s = request.getSession();
    int[] arr = (int[]) s.getAttribute("calorieArray");
    Integer index = (Integer) s.getAttribute("arrayIndex");
    
    if (arr == null) {
        arr = new int[100]; // Initialize array with a fixed size
        index = 0; // Initialize index
    }
    
    // Get the calorie and quantity from request
    String calorieParam = request.getParameter("cal");
    String qtyParam = request.getParameter("qty");
    int quantity = (Integer) s.getAttribute("qty");
    
    if (calorieParam != null && qtyParam != null) {
        try {
            int cal = Integer.parseInt(calorieParam);
            int qty = Integer.parseInt(qtyParam);
            
            if (index < arr.length) {
                arr[index] = cal * qty;
                %> <script> alert("<%= arr[index] %> calories have been added!!!")</script> <% 
                index++;
            }
            
            s.setAttribute("calorieArray", arr);
            s.setAttribute("arrayIndex", index);
            s.setAttribute("qty",qtyParam);

            
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
    }
%>
 
</body>
</html>