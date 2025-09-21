<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fitness</title>
    <link rel="stylesheet" href="welc.css">
<%HttpSession s = request.getSession(); %>
</head>
<body>
    <h1>     &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;
      Hello    "<%=s.getAttribute("name")%>"<br><br><br>&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;WELCOME TO BRILLIANT FITNESS CALORIES COUNTER</h1>
    <div class="welcome">
    <h3>Calories are essential for human health.</h3>
    <p style="margin-left: 20px;"> 
        We Have Around 60 Foods In Our Website.<br></p>
       <p style="margin-left: 10px;"> Count Your Calories For A Healthier Lifestyle.
    </p>
    <br>
    <form action="home.jsp">
        <button type="submit" class="btn">Go To Explore</button>
    </form>
</div>
    
    
</body>
</html>