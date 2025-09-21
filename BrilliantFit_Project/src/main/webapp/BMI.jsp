<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewsport" content="width=device-width, initial-scale=1.0" />
    <title>BMI Calculator</title>
    <link rel="stylesheet" href="Bmi_ca.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://fonts.googleapis.com/css2?family=Anta&display=swap" rel="stylesheet">
    <script src="script.js" defer></script>
  </head>
  <body>
    <div class="body">
     <div class="header">
        
        <div id="main-content">
            <div class="left-section">
                <div class="OpenSideBar"><button class="open" onclick="toggleSidebar()"><img src="sidebar1.jpg" class="sidebar_icon" ></button>
                </div>
            
                <div> <img src="blf_logo.jpg" width="50px" height="100px" class="teamlogo"></div>
            </div>
           <p style="color:darkgreen; padding-right:50%; margin-top:15px;">Brilliant Fit</p>
            <div class="middle_section">
              
            </div>
            
                
        </div>
    <div class="container">
      <h1 style="color:white;">BMI Calculator</h1>

      <form class="calculator">
        <div>
          <label for="weight" style=" font-size: large; color: rgb(255, 255, 255);">Weight - lb</label>
          <input type="number" id="weight" min="0" step="1" value="0" />
        </div>

        <div>
          <label for="height" style="color: white; font-size: large;">Height</label>
          <input type="number" id="foot" min="0" step="1" value="0" /> <br>
          <input type="number" id="inch" min="0" step="1" value="0" /> 
        </div>

        <div>
          <button type="reset">Reset</button>
          <button type="submit">Submit</button>
        </div>
      </form>

      <section class="output">
        <!-- <h3 style="color: white;">Your BMI is</h3> -->
       <center> <p id="bmi">0</p><br>
        <p id="desc">N/A</p>
        </center>
      </section>
      

      
      <section class="bmi-scale">
        <div style="--color: var(--underweight)">
          <h4>Underweight</h4>
          <p style="color: white;">&lt; 18.5</p>
        </div>

        <div style="--color: var(--normal)">
          <h4>Normal</h4>
          <p style="color: white;">18.5 – 25</p>
        </div>

        <div style="--color: var(--overweight)">
          <h4>Overweight</h4>
          <p style="color: white;">25 – 30</p>
        </div>

        <div style="--color: var(--obese)">
          <h4>Obese</h4>
          <p style="color: white;">≥ 30</p>
    </div>
    </section>
  </div>
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
    
    
    
  </body>
</html>