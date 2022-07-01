<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
 
<head>
 
<link rel="stylesheet" type="text/css " href="css/styles.css"> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">   
<script src="<c:url value="/js/jquery-3.6.0.js"/>"></script>
<script src="file:///C:\Users\DEO\Desktop\web assignment1"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="<c:url value="/js/index.js"/>"></script>
<script type="text/javascript" src="js/index.js"></script>
<script src="js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="js/jquery-3.6.0.js"></script>
<script src="submit.js" defer></script>
<title>Welcome to place where people meets people!!</title>
<meta name="keywords" content="party,places,nighout,things to do,bars,club,clubs,">
</head>

<html> 
<body>

  <div id="menubar" style="float:left; width:23% ;  height: 100%; background-color: rgb(10, 9, 9); z-index: 10 ;position: absolute;" >  
    <div style="width:50%; margin-left: 25%;margin-top: 10%; background-color: black; height: 10%; border-radius:5% ;border: solid 3px; border-color: white;">
    <h2 style="color:white; text-align: center;">Sign In</h2>

    </div>
     <br>
     <br>
    <form>
    <input style="margin-left: 25%;" type="text" placeholder="Search For Event title that is today" >
    <button>Search</button>
    </form>
    <hr>
    <br>
    <a id="close" style="color:white;font-size: 40px; float: right; width: 100%; position: absolute; bottom:0px;"  class="closebtn" >> </a>
     
</div>
      
      
   <nav id ="nav">
    
    <ul>
      <li class="nav1"></li>
      <li> <a href="/main_app/home">Home</a></li>
      <li class = "nav1"><a href="#Activites">About us </a></li>
      <li class = "nav1"><a href="/main_app/search">Events</a></li>
      <li class = "nav1"><a href="/main_app/Addevent">Add Event</a></li>
      <li class = "nav1"><a href="/main_app/Login_Page">My Events</a></li>
      <li class = "nav1"><a id="signup" href="/main_app">Sign up</a></li>
      <li class = "nav1"><a  style="color:white;font-size:  10px;font-family: 'Brush Script MT', cursive;">Freak<span style="color:yellow;font-size: 20px;">Y EVENTS</span></a>
      </li>
      
    </ul>
     <hr>
     <img id="menu"src="pictures/iconbar.jpg" >
    <p style="font-size: 20px;">Freak<span style="color:yellow;font-size: 40px;">Y EVENTS</span></p>
     
       
</nav>


 


<div class=Header style="z-index: 7;">
<h2 class="FAQ"style="z-index: 8;">Worlds first platform for Event Creation</h2>  



</div>



<div class="button1"style="z-index: 4;">
 

  <a href="signup.html">Sign up</a>
</div>
<div id=example style="z-index: 2;">
  <div class=image>
  <img id="img22" style="z-index: 3; width: 100%; height: 100%; border-radius: 2%;" src="pictures/deliver.jpg" alt="Italian Trulli"> 
</div>

  <a class="prev" onclick="change(1)" >&#10094;</a>
  <a class="next" onclick="change(2)" >&#10095;</a>
</div>

<div class="ECO" style="z-index: 5;"> 
  <h2 style="z-index: 6;">Some available positions in our Ecosystem</h2>
</div>
<div class="Descriptions">
  <div>
  <p>Supply products for events</p>
</div>
  <div>
  <p>Create events</p>
</div>
<div>
  <p>Deliver products to Events</p>

</div>
<img src="pictures/deliver.jpg" alt="Italian Trulli">

<img src="pictures/revolt.jpg" alt="Italian Trulli">

<img src="pictures/delivery.jpg" alt="Italian Trulli">
<div>
  <a href="signup.html">Create a supplier account</a>
  </div>
  <div>
  <a href="signup.html">Create an event creater account</a>
  </div>
<div>
  <a href="signup.html">Create a Delivery account</a>
</div>
</div>

<div style="margin-top: 800px;" class="hr">

<hr class="even">
<hr class= "odd">
<hr class="even">
<hr class= "odd">
<hr class="even">
<hr class= "odd">
</div>
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
<h2 onclick="showdd()" style="color:wheat">show DOM details</h2>
<hr>
<label onclick="show2()"  id="head1" style="color: white;display:none">Head</label>
<hr>
<label onclick="show3()" id="body1" style="color: white;display:none">Body</label>
<button class="main" onclick="hidemain()" style=" display:none">Scroll up</button>
<hr>
<label class="div2" style="color: white; display:none">index.js</label>
<label class="div2" style="color: white; display:none">Index2.js</label>
<label class="div2" style="color: white; display:none">jquery</label>
<button class="div2" onclick="hidehead()" style=" display:none">Scroll up</button>
<label onclick="showmenuitem()" class="div1" style="color: white; display:none">Menubar-div</label>
<label onclick="showheaderitem()"class="div1" style="color: white; display:none">Header-div</label>
<label onclick="showButton1item()" class="div1" style="color: white; display:none">Button1-div</label>
<label onclick="showexampleitem()" class="div1" style="color: white; display:none">example-div</label>
<label onclick="showecoitem()" class="div1" style="color: white; display:none">ECO-div</label>
<label onclick="showDescription()"class="div1" style="color: white;display:none">Description-div</label>
<label onclick="showfooter()" class="div1" style="color: white;display:none">Footer-div</label>
<button class="div1" onclick="hidebody()" style=" display:none">Scroll up</button>
<hr>
<label class="menubar1"style="color: white; display:none">Menubar-h2</label>
<label class="menubar1"style="color: white; display:none">Menubar-h3</label>
<label class="menubar1"style="color: white; display:none">Menubar-a</label>
<button class="menubar1" onclick="hidemenuitem()" style=" display:none">Scroll up</button>
<label class="footer1"style="color: white; display:none">Footer-p</label>
<label class="footer1"style="color: white; display:none">Footer-h3</label>
<label class="footer1"style="color: white; display:none">Footer-a</label>
<label class="footer1"style="color: white; display:none">Footer-h1</label>
<button class="footer1" onclick="hidefooter()" style=" display:none">Scroll up</button>
<label class="Description1" style="color: white;display:none">  Desc-p</label>
<label class="Description1" style="color: white;display:none">  Desc-img</label>
<label class="Description1" style="color: white;display:none">  Desc-a</label>
<button class="Description1" onclick="hideDesc()" style=" display:none">Scroll up</button>
<label class="ECO1" style="color: white;display:none">Eco-H2</label>

<label class="Button11" style="color: white;display:none">Navbar</label>
<label class="Button11" style="color: white;display:none">Navbar</label>
<label style="color: white;display:none">Navbar</label>
<label style="color: white;display:none">ul</label>
<label style="color: white;display:none">a</label>
<script src="jquery-3.6.0.js"></script>
<script  src="index.js"></script>
<script  src="index2.js"></script>
<script src="submit.js" defer></script>
</body>
<script  src="index.js"></script>
</html>