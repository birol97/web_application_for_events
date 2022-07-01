<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
    <link rel="stylesheet" type="text/css " href="css/style2.css"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">   
    
</head>
<html>
<body>
  <div id="flip">Click to slide down panel</div>
  <div style="height: 150px;">
    <nav id ="nav">
    
        <ul >
          <li> <a href="/main_app/home">Home</a></li>
          <li class = "nav1"><a href="#Activites">About us </a></i></li>
          <li class = "nav1"><a href="/main_app/search">Events</a></li>
          <li class = "nav1"><a href="/main_app/Addevent">Add Event</a></li>
          <li class = "nav1"><a href="/main_app/login_Page">My Events</a></li>
          <li class = "nav1"><a id="signupp" href="/main_app">Sign up</a></li>
          <li class = "nav1"><a style="color:white;font-size:  10px;font-family: 'Brush Script MT', cursive;">Freak<span style="color:yellow;font-size: 20px;">Y EVENTS</span></a>

        </ul>
        <hr>
</nav>

  </div>
<div id="form1">
    <form   method="post" action="Login_Page" >
    
        <label for="lname">username</label><br>
        <input type="text" id="lname" name="name" ><br><br>
        <label for="lname">password</label><br>
        <input type="password" id="lname" name="password" ><br><br>
        <input type="submit" value="Login"><br>
        <a href="/main_app">If you are not signed in click for signup page</a>
      </form> 
</div>
<br>

<h3 style="color:white">${Disclaimer}</h3>
<br>
<hr>
<div class = "footer">
  <div>
<p style="font-size: 20px;">Freak<span style="color:yellow;font-size: 40px;">Y EVENTS</span></p>
  </div>
  
  <hr>
<h3 style="color:white;">Find us on Social Media</h3>
<hr>
<a href="#" class="fa fa-facebook"></a>  
<a href="#" class="fa fa-twitter"></a>  

<a href="#" class="fa fa-instagram"></a>  
<a href="#" class="fa fa-snapchat-ghost"></a>  

</div>
<div style=" width: 100%;height: 200px; background-color: yellow;">
<H1 style=" font-size: 40px;color: black; text-align: center;">About US</H1>
<div id="Activites"> <p style="text-align: center; font-size: 20px;font:status-bar; font: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;">We are the worlds first event organiser website.Enabling people contribute or share their events to larger audiance.Our main aim is to creating a environment for like minded people to meet each other  in real life without any restritction or extra cost</p></div>

</div>

</body>

</html>