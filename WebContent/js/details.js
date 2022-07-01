$( document ).ready(function showthedetails(){

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

})