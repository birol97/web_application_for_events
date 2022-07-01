<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="main_app.user"%>
 <%@page import="java.util.ArrayList"%>
    <%@page import="main_app.events"%>
    <%@page import="main_app.privilege"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your profile</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" type="text/css " href="css/myprofile.css"> 
<script type="text/javascript" src="/js/registered.js"></script>
<script src="<c:url value="/js/index.js"/>"></script>
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
          <li class = "nav1"><a id="signupp"href="/main_app/Login_Page">My Profile</a></li>
          <li class = "nav1"><a style="color:white;font-size:  10px;font-family: 'Brush Script MT', cursive;">Freak<span style="color:yellow;font-size: 20px;">Y EVENTS</span></a>
          
        </ul>
</nav>
<hr>
</div>



<% user x  = (user) request.getAttribute("user_info");
if(x != null){ %>
	x.getUser();
<h2>Congratulations u have signed up to our website.Now you can Create Events or Participate in the events</h2>
<h3> Name : <%=x.getUser()%> </h3>	
<h3> Password : <%=x.getpass() %> </h3>
<h3> Phone : <%=x.getphone()%> </h3>	
<h3> Email : <%=x.getemail() %> </h3>
	
<%}%>;

<% String name1   = (String) session.getAttribute("name");
if(name1 == null) {%>
	
<h3 style= color:white;> Please click the link below to signup to see your profile details </h3>	
	<a style= color:white; href="/main_app/Login_Page"> Click to here to signup page</a>
<h3 style= color:white;> If you already signup click here to go login page </h3>		
	<a style= color:white; href="/main_app/Login_Page"> Click to here to login page</a>
<%}%>;


<% String name   = (String) session.getAttribute("name");
if(name != null){ %>
<a href="/main_app/Logout">Click here for logout</a>
<H2 style= color:white;>Welcome to our website</H2>
<H2 style= color:white;>Profile details are listed below</H2>

 

<h3 style= color:white;> name:  ${name} </h3>
 <h3 style= color:white;>id : ${id} </h3>
<hr>
<h3 style= color:white;>surname: ${lname}</h3>
<hr>
<h3 style= color:white;>email: ${email}</h3>
<hr>
<h3 style= color:white;>password: ${pass}</h3>
<h3 style= color:white;>phone:  ${phone}</h3>

<%}%>

<h2 style= color:white;>For demonstration purposes below is the cookies gathered from user login</h3>
   <%
         Cookie cookie = null;
         Cookie[] cookies = null;
         
         // Get an array of Cookies associated with the this domain
         cookies = request.getCookies();
         
         if( cookies != null ) {
            out.println("<h2 > Found Cookies Name and Value</h2>");
            
            for (int i = 0; i < cookies.length; i++) {
               cookie = cookies[i];
               out.println(" <h2  style= color:white;> Name : " + cookie.getName( ) + ",   </h2>");
               out.println(" <h2  style= color:white;> Value : " + cookie.getValue( ) + ",   </h2>");
            }
         } else {
            out.println("<h2>No cookies founds</h2>");
         }
      %>


<hr>



  
 



<div id="userinfo">


</div>
<div>
<h3>Please login</h3>
</div>
</div>



</body>
</html>