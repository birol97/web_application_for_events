<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
  <html lang="en">
    <head>
      <link rel="stylesheet" type="text/css " href="css/eventsinfo.css"> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">   
    </head>
<body>
    <div class="part1">
        <nav id ="nav">
        
            <ul>
              <li> <a href="index.html">Home</a></li>
              <li class = "nav1"><a href="#Activites">About us</a> </li>
              <li class = "nav1"><a href="search.html">Events</a></li>
              <li class = "nav1"><a href="addevent.html">Add Event</a></li>
              <li class = "nav1"><a href="#/Add Places">My Events</a></li>
              <li class = "nav1"><a href="signup.html">Sign up</a></li>
              <li class = "nav1"><a style="color:white;font-size:  10px;font-family: 'Brush Script MT', cursive;">Freak<span style="color:yellow;font-size: 20px;">Y EVENTS</span></a>

            </ul>
         
        </nav>
        </div>
        <div style="width: 50%; margin-left: 25%;">

<h1>Add Event details</h1>
<h3>${Title}</h3>
<hr>
<div class="circle" style="width: 20%;">
   <span  style="font-size: 40px;margin-right: 20px;text-decoration: line-through;">1</span> <span style=" font-size: 40px;margin-right: 20px;text-decoration: line-through;">2</span> <span style=" border:3px solid;border-color: rgb(14, 15, 6); background-color:rgb(216, 226, 19);font-size: 40px; margin-right: 20px;">3</span>
</div>

<form method="post" action="Addevent3" enctype="multipart/form-data">
    <h2>Upload images related to Event</h2>
    <label for="img">Select image 1:</label>
    <input type="file" id="img" name="img1" accept="image/*">
    <br>
    <label for="img">Select image 2:</label>
    <input type="file" id="img" name="img" accept="image/*">
    <br>
    <label for="img">Select image 3:</label>
    <input type="file" id="img" name="img" accept="image/*">
    
    <br>
    <br>
    <br>
    <div style="width: 110px;"class="button1">
     
 </div>
  
<input type="submit"  value="Submit the event">
</form>
<hr>
</div>
<div>
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
    </div>
</body>
</html>