
function Myfunction(){
  const name1 = document.getElementById('fname');
const surname = document.getElementById('lname');
const phone = document.getElementById('phone');
const email = document.getElementById('email');
const pass = document.getElementById('pass');



    // store the entered name in web storage
    localStorage.setItem('name', name1.value);
    localStorage.setItem('surname', surname.value);
    localStorage.setItem('phone',phone.value);
    localStorage.setItem('email',email.value);
    localStorage.setItem('pass',pass.value);
    // run nameDisplayCheck() to sort out displaying the
    // personalized greetings and updating the form display
   
  Personlizedgreeting();
}
//function for signout
function forget(){
  localStorage.removeItem('name');
  Personlizedgreeting();
  window.location.reload();
}

function Personlizedgreeting() {

  if(localStorage.getItem('name')){ 
    
  
  document.getElementById("form1").style.display='none';
  
   const form = document.querySelector('form');
    
 
     form.style.display="none";
     const newdiv = document.getElementById('welcome');
     
   newdiv.style.display ='block';
  
   const header1 = document.getElementById('personheader');
   
   const name = localStorage.getItem('name');
   header1.textContent= `welcome ${name} on our website,`;
 
   
   
    
  }
}
//showing the related info about user
function showthedetails(){

document.getElementById('MyDetails').style.display="block";
document.getElementById('foot').style.display="none";
document.getElementById('ft').style.display="none";
const one = document.getElementById('1');
const two = document.getElementById('2');
const three = document.getElementById('3');
const four = document.getElementById('4');
const five = document.getElementById('5');
one.textContent=localStorage.getItem('name');
two.textContent=localStorage.getItem('surname');
three.textContent=localStorage.getItem('phone');
four.textContent=localStorage.getItem('email');
five.textContent=localStorage.getItem('pass')
one.style.textAlign='center';
two.style.textAlign='center';
three.style.textAlign='center';
four.style.textAlign='center';
five.style.textAlign='center';

}

document.body.onload = Personlizedgreeting;