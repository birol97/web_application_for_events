<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
  <html lang="en">
    <head>
      <link rel="stylesheet" type="text/css " href="css/eventsinfo.css"> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">   
<script src="addevent2.js"></script>
<script src="jquery-3.6.0.js"></script>
    </head>
<body>
    <div class="part1">
        <nav id ="nav">
        
            <ul>
              <li> <a href="index.html">Home</a></li>
              <li class = "nav1"><a href="#Activites">About us </a></i></li>
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
<h2>${Title}</h2>
<hr>
<div class="circle" style="width: 20%; margin-bottom: 20px;">
   <span  style="font-size: 40px;margin-right: 20px;text-decoration: line-through;">1</span> <span style="border:3px solid;border-color: rgb(14, 15, 6); background-color:rgb(216, 226, 19);font-size: 40px; margin-right: 20px;">2</span> <span style=" font-size: 40px;margin-right: 20px;">3</span>
</div>
<form action="Addevent3" >
 
  <label class="container"><h2 style="text-decoration: underline;">Choose preffered age range for the event</h2>
    
    <span class="checkmark"></span>
  </label>
  <label class="container">0-99
    <input id="allage" type="checkbox" name="age" value= "0-99">
    <span class="checkmark"></span>
  </label>
  <label class="container">18-99
    <input id="min18" type="checkbox" name="age" value = "18-99">
    <span class="checkmark"></span>
  </label>
  <label class="container">21-99
    <input id="min21" type="checkbox" name="age" value = "21-99">
    <span class="checkmark"></span>
  </label>
   
  <label class="container"><h2 style="text-decoration: underline;">Approximate time range of event</h2>
   
  </label>
  <label class="container">1 hours
    <input id="1"type="checkbox" name="duration" valye ="1">
    <span class="checkmark"></span>
  </label>
  <label class="container">1-3 hours
    <input id="1-3" type="checkbox" name="duration" value ="1-3">
    <span class="checkmark"></span>
  </label>
  <label class="container">3-7 hours
    <input id="3-7" type="checkbox" name="duration" value="3-7">
    <span class="checkmark"></span>
  </label>
  <label class="container">7+ hours
    <input id="7+" type="checkbox" name="duration" value="7">
    <span class="checkmark"></span>
  </label>
  <label class="container"><h2 style="text-decoration: underline;">Do the event will need product support from ecosystem</h2>
    
    <span class="checkmark"></span>
  </label>
  <label class="container">Yes
    <input id="support" type="checkbox" name="support" value="yes_support">
    <span class="checkmark"></span>
  </label>
  <label class="container">No
    <input type="checkbox"   name="support" value="no_suppor">
    <span class="checkmark"></span>
  </label>
  <label class="container"><h2 style="text-decoration: underline;">Do the event will need human support from ecosystem</h2>
   
    <span class="checkmark"></span>
  </label>
  <label class="container">Yes
    <input id="hummansupport" type="checkbox" value="yes_hummansupport">
    <span class="checkmark"></span>
  </label>
  <label class="container">No
    <input type="checkbox" value="yes_hummansupport">
    <span class="checkmark"></span>
  </label>

  <br>
  <br>
  <br>
  <div class="button1">
  
    
    
    
    </div>
    <input type="submit"  value="Signup">
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
    <script src="addevent2.js"></script>
</body>
</html>