<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="js/registered.js"></script>
<script src="<c:url value="/js/index.js"/>"></script>
<title>Insert title here</title>
</head>
<body>
<div style="height: 150px;">
    <nav id ="nav">
    
        <ul >
          <li> <a href="index.html">Home</a></li>
          <li class = "nav1"><a href="#Activites">About us </a></li>
          <li class = "nav1"><a href="search.html">Events</a></li>
          <li class = "nav1"><a href="addevent.html">Add Event</a></li>
          <li class = "nav1"><a href="/main_app/login_form">My Events</a></li>
          <li class = "nav1" ><a id="signupp"href="/main_app">Sign up</a></li>
          <li class = "nav1"><a style="color:white;font-size:  10px;font-family: 'Brush Script MT', cursive;">Freak<span style="color:yellow;font-size: 20px;">Y EVENTS</span></a>

        </ul>
</nav>
<hr>
</div>
<div id = "user_information">
<p style="color:blue;text-align:center;">Hello ${name} ${surname},</p>

${mail}

</div>
<div id = "events_information">
${name}
${surname}
${mail}
</div>
<h2>Congratulations u have signed up to our website.Now you can Create Events or Participate in the events</h2>


</body>
</html>