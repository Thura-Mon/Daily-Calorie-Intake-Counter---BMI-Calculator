<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="admin.css">
<link rel="stylesheet" href="crud.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://fonts.googleapis.com/css2?family=Anta&display=swap" rel="stylesheet">
    
        <style>
    
    .iud{
    color:darkgreen;
    width:110px;
    height:28px;
    background-color: transparent;
    border: solid 1px darkgreen;
    border-radius: 5px;
    }
    
    .iud:hover{
     color:white;
     background-color:darkgreen;
     transition:0.5s;
     box-shadow:  30px darkgreen;
     cursor: pointer;
    }
    
    .iud:active{
     background-color: rgb(169, 255, 180);
     transition: -0.5s;
    }
    
    .input_iud{
    
    border-style: solid;
    border-radius: 5px;
    border-color: rgb(87, 178, 123);
      
    }
    .input_iud:hover{
     border-style: solid;
    border-color: rgb(169, 255, 180);
    transition: -0.5s;
    }
    
    </style>
</head>
<body>

  <div class="header">
        
        <div id="main-content">
            <div class="left-section">
                <div class="OpenSideBar"><button class="open" onclick="toggleSidebar()"><img src="sidebar1.jpg" class="sidebar_icon" ></button>
                </div>
            
                <div> <img src="blf_logo.jpg" width="50px" height="100px" class="teamlogo"></div>
            </div>    
        </div>
        <h1>Delete User</h1>
<form action="delete_user" method="post">
<label for="name">Performing a deletion of user by Email Address: </label><br><br>
       <input type="text" id="name" class="input_iud" name="name" required> <br><br><br>
        <input type="submit" class="iud" value="Delete User"> &nbsp; <a href="user.jsp"><input type="button" class="iud" value="Cancel"></a>
</form>
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