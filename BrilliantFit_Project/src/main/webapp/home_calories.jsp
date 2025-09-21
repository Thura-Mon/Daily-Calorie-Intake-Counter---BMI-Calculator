<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calorie Counter</title>
    <link rel="stylesheet" href="home_calorie.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
        }

        header {
            background-color: #003300; /* Dark Green */
            color: white;
            text-align: center;
            padding: 1em;
        }
        
        .header-content{
        margin-right:38%;
        }
        
        
        .logo_img{
        width: 80px;
        height: 80px;
          display: flex;
        flex-direction: row;
        align-items: center;
        margin-right: 80%%;
        
        }
        
        


        main {
            padding: 2em;
        }

        .team {
            display: flex;
            flex-wrap: wrap;
            gap: 1em;
        }

        .team-member {
            flex: 1 1 calc(33% - 2em);
            text-align: center;
            background-color: #f9f9f9;
            padding: 1em;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .team-member img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
        }

        footer {
            text-align: center;
            background-color: #003300;
            color: white;
            padding: 1em;
        }

        /* Sidebar Styles */
        .sidebar {
            height: 100%;
            width: 250px;
            position: fixed;
            left: -250px;
            top: 0;
            background-color: #fafffa;
            padding-top: 30px;
            transition: 0.3s;
            color:darkgreen;
            z-index: 1;
        }

        .sidebar a {
            padding: 15px;
            text-decoration: none;
            font-size: 18px;
            color: rgb(255, 255, 255);
            /* display: block; */
            transition: 0.3s;
        }

        .options{
        padding: 10px;
        cursor: pointer;
        margin-right: 0.2rem;
        
    }
    .options:hover{
        background-color: #dddde2;
        border-radius: 12px;
    }
    .options p{
        margin-left: 1.5rem;
        font-size: 1em; 
        color: darkgreen;
        
    }

        .sidebar .closebtn {
            position: absolute;
            top: 10px;
            right: 10px;
            font-size: 36px;
            margin-left: 50px;
        }

        /* Toggle Button */
        #sidebar-toggle {
            font-size: 30px;
            cursor: pointer;
            background-color: #003300;
            color: white;
            border: none;
            padding: 10px;
            position: absolute;
            left: 10px;
            top: 20px;
        }
        /* When the sidebar is open */
        .sidebar.open {
            left: 0;
        }
        .INteamlogo{
        width: 80px;
        height: 80px;
        
        display: flex;
        flex-direction: row;
        align-items: center;
        margin-left: 0px;
    }
    .line{ 
        margin: 0.8rem 0;
        height: 1px;
        background-color: rgb(18, 17, 17);
    }
    
    
    header {
    background-color: #003300; /* Dark Green */
    color: white;
    text-align: center;
    padding: 1em;
}

.header-content {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 20px;
}

.logo_img {
    width: 80px;
    height: 80px;
    margin-right: 15px;
}

.brand-name {
    font-size: 1.5em;
    margin-right: 20px;
    color: white; /* Matches the text color in the header */
    display: flex;
    align-items: center;
}
    
    </style>
</head>
<body>
        <!-- Sidebar Button -->
        <button id="sidebar-toggle" onclick="toggleSidebar()">☰ &nbsp;</button>
        
    
        <!-- Sidebar -->
        <div id="mySidebar" class="sidebar">
            <div><img src="blf_logo.jpg" class="INteamlogo"></div>
            
            <a href="javascript:void(0)" class="closebtn" onclick="toggleSidebar()" style="color: black;">×</a>
            
            
            <div class="line"></div>
            <a href="login.jsp">
                <div class="options">
                    <p><i class="fas fa-house"></i>&nbsp;Home</p>
                </div>           
            </a>
           
                       
            <div class="line"></div>
            <h3 style="color: darkgreen;">Catagories</h3>
            <a href="login.jsp">
                <div class="options">
                    <p><i class="fa-solid fa-utensils"></i>&nbsp;Meal</p>
                </div>           
            </a>
            <a href="login.jsp">
                <div class="options">
                    <p><i class="fa-solid fa-carrot"></i></i>&nbsp;Fruits</p>
                </div>           
            </a>
            <a href="login.jsp">
                <div class="options">
                    <p><i class="fa-solid fa-pizza-slice"></i>&nbsp;Snacks & <i class="fa-solid fa-champagne-glasses"></i>&nbsp;Drinks</p>
                </div>           
            </a>
            
            <div class="line"></div>
            <a href="login.jsp">
                <div class="options">
                    <p><i class="fa-solid fa-right-from-bracket"></i>&nbsp;Logout</p>
                </div>           
            </a>
        </div>
    
    
    
    
    
    
    <header>
    <div class="header-content">
        <img src="blf_logo.jpg" class="logo_img" alt="BrilliantFit Logo">
        <div class="brand-name">BrilliantFit</div>
        <div style="margin-left:47%;"><h1>Description</h1></div>
        
    </div>
    </header>
    
    
    
    
    

    <main>
    <section id="hero">
        <div class="hero-content">
            <h2>Track Your Calories Easily</h2>
            <p>Stay healthy and fit with our easy-to-use calorie counter. Start tracking today!</p>
            <a href="login.jsp" class="cta-button">Get Started</a>
        </div>
    </section></main>
    <footer>
        <p>&copy; 2024 Calorie Counter. All rights reserved.</p>
    </footer>
    <script>
        function toggleSidebar() {
            var sidebar = document.getElementById("mySidebar");
            sidebar.classList.toggle("open");
        }
    </script>
</body>
</html>