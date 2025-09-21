<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Calorie Counter</title>
    <link rel="stylesheet" href="about.css">
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
    
    .team-member img {
    width: 170px;
    height: 170px;
    border-radius: 50%;
    object-fit: cover;
    margin-bottom: 0.5em;
}

    .line{ 
        margin: 0.8rem 0;
        height: 1px;
        background-color: rgb(18, 17, 17);
    }
    
    </style>
</head>
<body>
    <!-- Sidebar Button -->
    <button id="sidebar-toggle" onclick="toggleSidebar()">☰ &nbsp;<p>Brilliant Fit</p></button>
    <!-- Sidebar -->
    <div id="mySidebar" class="sidebar">
        <div><img src="blf_logo.jpg" class="INteamlogo"></div>
        
        <a href="javascript:void(0)" class="closebtn" onclick="toggleSidebar()" style="color: black;">×</a>
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
        
        <div class="line"></div>
        <a href="login.jsp">
            <div class="options">
                <p><i class="fa-solid fa-right-from-bracket"></i>&nbsp;Logout</p>
            </div>           
        </a>
    </div>

    <header>
        <h1>Developer Team</h1>
    </header>
        <section class="about">
            <h2>Our Team's Mission</h2>
            <p style="color: darkgreen;">Welcome to Brilliant Fit Calorie Counter! Our mission is to help you maintain a healthy lifestyle by providing an easy-to-use tool to track your daily calorie intake. We believe in empowering individuals to make informed dietary choices and achieve their health goals.</p>
        </section>

        <section class="team">
            <div class="team-member">
                <img src="thuramon.jpg" alt="Team Member 1">
                <h3>Thura Mon</h3>
                <p>Server-Side Developer</p>
            </div>
            <div class="team-member">
                <img src="maypanchuu.jpg" alt="Team Member 2">
                <h3>May Pan Chuu</h3>
                <p>Server-Side Developer</p>
            </div>
            <div class="team-member">
                <img src="shinshin.jpg" alt="Team Member 3">
                <h3>Phue Myat Chit</h3>
                <p>UI Designer</p>
            </div>
            <div class="team-member">
                <img src="eithinzar.jpg" alt="Team Member 4">
                <h3>Ei Thinzar Myo Wai</h3>
                <p>UX Designer</p>
            </div>
            <div class="team-member">
                <img src="eithwekhine.jpg" alt="Team Member 5">
                <h3>Ei Thwe Khine</h3>
                <p>Data Analyst</p>
            </div>
            <div class="team-member">
                <img src="nora.jpg" alt="Team Member 6">
                <h3>Sandar Htwe</h3>
                <p>Data Analyst</p>
            </div>
        </section>
   

    <footer>
        <p>&copy; 2024 Calorie Counter</p>
    </footer>

    <script>
        function toggleSidebar() {
            var sidebar = document.getElementById("mySidebar");
            sidebar.classList.toggle("open");
        }
    </script>
</body>
</html>