<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css " href="css/style2.css"> 
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">   
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="js/signup.js"></script>
    <script src="js/submit.js"></script>
   
</head>

<body>
<div style="height: 150px;">
    <nav id ="nav">
    
        <ul >
          <li> <a href="/main_app/home">Home</a></li>
          <li class = "nav1"><a href="#Activites">About us </a></li>
          <li class = "nav1"><a href="/main_app/search">Events</a></li>
          <li class = "nav1"><a href="/main_app/Addevent">Add Event</a></li>
          <li class = "nav1"><a href="/main_app/Login_Page">My Events</a></li>
          <li class = "nav1" ><a id="signupp"href="/main_app">Sign up</a></li>
          <li class = "nav1"><a style="color:white;font-size:  10px;font-family: 'Brush Script MT', cursive;">Freak<span style="color:yellow;font-size: 20px;">Y EVENTS</span></a>

        </ul>
</nav>
<hr>
</div>
<div id="welcome" style="display: none; position: absolute; top:10%;" >

<h1 id="personheader" style="color:rgb(192, 233, 8); background-color:rgb(0, 0, 0); width: 80%; left: 40%;
 position: absolute; text-align: center;height: 20px; font-size: 28px;"> </h1><br><br>
<p style="color:white; text-align: center; margin-left: 40%; ">Congratulations for signing up successfully to our website.
  To see more information about your profile click below
  
</p>
<br>
<a onclick="showthedetails()" >For details scroll down</a>

<div id="MyDetails" style="display: none; height: 200px;width:100%">
 <table style="height: 200px;width:100%;color:white;margin-bottom: 10px; border: solid 3px; border-color: antiquewhite;" >
  <tr>
    <th>First name</th>
    <th>Last name</th>
    <th>Phone</th>
    <th>Email</th>
    <th>Password</th>
  </tr>
  <tr>
  <td id="1"></td>
  <td id="2"></td>
  <td id="3"></td>
  <td id="4"></td>
  <td id="5"></td>
  </tr>
 </table>

</div>
<button id="signout" onclick="forget()" >sign out</button>
</div>

<div id="form1" >
    <form onsubmit="Myfunction()" method="post" action="login_form">
        <label for="fname">First name:</label><br>
        <input type="text" id="fname" name="fname" required><br>
        <label for="lname">Last name:</label><br>
        <input type="text" id="lname" name="lname" required><br>
        <label for="lname">Phone</label><br>
        <input type="number" id="phone" name="phone" required><br>
        <label for="lname">Email</label><br>
        <input id="email"type="text"  name="email" required oninput="validateEmail()"><br>
     
        <label for="lname">password</label><br>
        <input id="pass"type="password"  name="pass" minlength="8" required oninput="validatepass()"><br>
        <p id="warn"></p>
        <input type="submit"  value="Signup"><br>
        <a href="/main_app/Login_Page">If already signed in click for login page</a>
      </form> 
      
      </div>
      <br>
      <br>
      <hr>
      <div class = "footer" id="foot">
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
      <div id="ft"style=" width: 100%;height: 200px; background-color: yellow;">
      <H1 style=" font-size: 40px;color: black; text-align: center;">About US</H1>
      <div id="Activites"> <p style="text-align: center; font-size: 20px;font:status-bar; font: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;">We are the worlds first event organiser website.Enabling people contribute or share their events to larger audiance.Our main aim is to creating a environment for like minded people to meet each other  in real life without any restritction or extra cost</p></div>
      
      </div>
      <script src="signup.js"></script>
      <script src="submit.js" defer></script>
</body>

</html>