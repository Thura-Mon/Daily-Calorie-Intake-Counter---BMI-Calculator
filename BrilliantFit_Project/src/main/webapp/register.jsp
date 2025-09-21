<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="log.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style type="text/css">


.btn{
    position: relative;
    width: 100%;
    height: 45px;
    background: transparent;
    border: 2px solid rgb(13, 178, 117);
    outline: none;
    border-radius: 40px;
    cursor: pointer;
    font-size: 16px;
    color: rgb(0, 176, 79);
    font-weight: 600;
    z-index: 1;
    background-color: transparent;
}



.btn:hover{
    background-color: #007200;
    color: white;
    transition:  0.5s;

}
.btn:active{
background-color: rgb(169, 255, 180);
     transition: -0.5s;
}

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
    height: 601px;
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
        <h2>Sign up</h2>
        <form action="register" name="f" onsubmit="submission(event)">
            <div class="input-box">
                <input type="text" required name="name">
                <label>Name</label>
                </div> 
            <div class="input-box">
                <input type="text" required name="email">
                <label>Email</label>
                <div id="val" style="color:red;"></div>
            </div>
                <div class="input-box">
                    <input type="password" required name="password">
                    <label>Password</label>
                    </div> 
                    <div class="input-box">
                        <input type="password" required name="confirm">
                        <label>Comfirm Password</label>
                        </div>   &nbsp; &nbsp; &nbsp;<span id="error" style="color:red;"></span>
                    <button type="submit" class="btn">Register</button>
                 
                    <div class="logreg-link">
                        <p>Already have an account?  &nbsp;
                            <a href="login.jsp" class="login-link">Login</a>
                        </p>
                    </div>
                </div>
            </div>
        </form>
    </div>
    <div class="info-text login">

<script>

function submission(event){
	
	var email = document.f.email.value;
	var test = /[a-zA-Z0-9]{3,}\@[a-zA-Z]{3,}\.com/;
	var pass = document.f.password.value;
    var con = document.f.confirm.value;
    var passtest = /[a-zA-Z0-9]{6,}/;
    
    if(!passtest.test(pass)){
    	alert("Password must be at least 6 characters");
    	event.preventDefault();
    }



	if(!test.test(email)){
		/* document.getElementById("val").innerHTML = "Please check your email"; */
		alert("Please check your email!");
		event.preventDefault();
	}
	
	if(pass!=con){
	        event.preventDefault();
	        document.getElementById("error").innerHTML = "Confirm password doesn't match with password!!!";
	        event.preventDefault();
	    }
		
	
}
</script>
</body>
</html>