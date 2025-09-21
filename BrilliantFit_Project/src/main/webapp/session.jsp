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
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calories Result</title>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
   
    <link rel="stylesheet" href="ses.css">
   
</head>
<body>
<div class="header">
        
        <div id="main-content">
            <div class="left-section">
                <div class="OpenSideBar"><button class="open" onclick="toggleSidebar()"><img src="sidebar1.jpg" class="sidebar_icon" ></button>
                </div>
            
                <div> <img src="blf_logo.jpg" width="50px" height="100px" class="teamlogo"></div>
            </div>
        
    <div class="calories-card" style="color:white; width:800px;">
       

<%
    int[] storedArr = (int[]) session.getAttribute("calorieArray");
    int qty = (int) session.getAttribute("qty");
    int totalCalories = 0;

    if (storedArr != null) {
        for (int i = 0; i < storedArr.length; i++) {
            totalCalories += storedArr[i];
            
        }
    }
    
 
    HttpSession n = request.getSession();
    
%>
<center><h1 style="margin-top:20px; letter-spacing:3.5px;">Result</h1></center>

<center><h1 style="font-weight:900;">&quot;<%=n.getAttribute("name") %>&quot;</h1></center>
 <br><br><br>
 <center><h3>Total Calories:</h3></center>
 
<center><h1 style="font-weight:900;"> <%= totalCalories %></center></h1> <center><%int n2 = 2000; 
 

 if(totalCalories>n2){
	 %>
	<h3>  > 2000 cal &nbsp;(Daily Average) </h3>
	 <br><br><br>
	 <h1><i class="fa-solid fa-face-tired"></i><i class="fa-solid fa-face-tired"></i><i class="fa-solid fa-face-tired"></i></h1>
 <%
 }
 
 else if(totalCalories<n2){
	 %>  
	 <h3> < 2000 cal&nbsp; (Daily Average) </h3>
	 <br><br><br>
	 <h1><i class="fa-solid fa-face-frown"></i><i class="fa-solid fa-face-frown"></i><i class="fa-solid fa-face-frown"></i></h1>
 <%}
  
  else {
	  %> 
	  <h3> = 2000 cal &nbsp;  (Daily Average) </h3>
	  <br><br><br>
	  <h1>><i class="fa-regular fa-face-laugh-beam"></i><i class="fa-regular fa-face-laugh-beam"></i><i class="fa-regular fa-face-laugh-beam"></i></h1>
  <%}
 
	%> 
	
	<%if(totalCalories>n2){
		%> <center><h3 style="margin-bottom:20px;">Your calories intake is too much than average, eat less to maintain a good shape.</h3></center>
	<% }
	else if(totalCalories==n2){
		%>
		<center><h3 style="margin-bottom:20px;"> Your calorie intake is average, you are in a healthy diet.</h3></center>
	<% }
	else{
		%><center><h3 style="margin-bottom:20px;">Your calorie intake is too less than average, eat more to maintain a good shape.</h3></center>
<% }
	%> </center></h3> 
		
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
</body>
</html>