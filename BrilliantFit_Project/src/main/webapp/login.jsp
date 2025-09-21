<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="log.css">
    
    <style type="text/css">
    .wrapper{
    z-index: 2;
    display: flex;
    align-items: center;
    max-height: 100vh;
    min-height: 50vh;
    position: fixed;
    width: 50%;
    justify-content: center;
    align-items: center;
    /* background: linear-gradient(to right, cyan, lightgreen, darkcyan); */
}



.wrapper{
    margin-left: 280%;
    position: relative;
    width: 400px;
    height: 500px;
    background: rgb(255, 255, 255);
    border-radius: 50px;
    box-shadow: 0 4px 30px rgba(0, 0, 0, 0.143);
    backdrop-filter: blur(8.8px);
    -webkit-backdrop-filter: blur(8.8px);
    border: none; 
    outline: none;
    /* justify-content: center; */
}
    </style>
</head>
<body><div class="container">
    </div>
    <div class="wrapper">
        <div class="form-box login">
            <h2>Login</h2>
            <form action="user">
                <div class="input-box">
                    <input type="email" required name="mail">
                    <label>Email</label>
                    </div>
                    <div class="input-box">
                        <input type="password" required name="pass">
                        <label>Password</label>
                        </div> 
                        <button type="submit" class="btn">Login</button>
                        <div class="logreg-link">
                            <p>Don't have an account? &nbsp;
                                <a href="register.jsp" class="register-link">Sign Up</a>
                                <div class="error"></div>
                            </p>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        
    </div>
</body>
</html>