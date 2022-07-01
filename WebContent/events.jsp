<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList"%>
    <%@page import="main_app.events"%>
    
<!DOCTYPE html>

<head>
<title>Page Title</title>
<link rel="stylesheet" type="text/css " href="css/search.css"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
</head>
<html>
<body >
   
        <nav id ="nav">
        
            <ul>
                <li> <a href="/main_app/home">Home</a></li>
                <li class = "nav1"><a href="#Activites">About us </a></i></li>
                <li class = "nav1"><a href="/main_app/search">Events</a></li>
                <li class = "nav1"><a href="/main_app/Addevent">Add Event</a></li>
                <li class = "nav1"><a href="/main_app/Login_Page">My Events</a></li>
                <li class = "nav1"><a id="signup" href="/main_app">Sign up</a></li>
                <li class = "nav1"><a  style="color:white;font-size:  10px;font-family: 'Brush Script MT', cursive;">Freak<span style="color:yellow;font-size: 20px;">Y EVENTS</span></a>

            </ul>
         
        </nav>
   
        <div class="header">
<h1 style="margin-left: 25%;" >Discover Events</h1>

        </div>
        <br>
<div style="margin-left: 25%; width: 75%;"class="header2">
<p>Featured</p>
<p>Popular</p>
<p>Recent</p>
<p>Live</p>
</div>
<br>
<br>
<br>
<div class="bar"> 
    <input type="text" placeholder="Search for location">
    <input type="date" id="birthday" name="birthday">
    <button id ="findplace">Find</button>
</div>

<h1>Displaying Event List</h1>
      <table border ="1" width="500" align="center">
         <tr bgcolor="00FF7F">
          <th><b>Click for reservation</b></th>
          <th><b>Event location</b></th>
          
          <th><b>Event Title</b></th>
          <th><b>Event Price</b></th>
         </tr>
        <%-- Fetching the attributes of the request object
             which was previously set by the servlet 
              "addevent3.java"
        --%> 
        <%ArrayList<events> std = 
            (ArrayList<events>)request.getAttribute("data");
        for(events s:std){%>
        <%-- Arranging data in tabular form
        --%>
            <tr>
                <td><form action="search" method="post">
                 <input id="event_id" type="hidden" name="event_id" value="<%=s.geteventid()%>">
    <input type="submit" name="upvote" value= "attend reserv"/>
</form></td>
                <td><%=s.getLocation()%></td>
                
                <td><%=s.getTitle()%></td>
                 <td><%=s.returnprice()%></td>
            </tr>
            <%}%>
        </table> 
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