
  
//validation for sign up process
function validatepass(){
    var ssn = document.getElementById('pass').value;

      if(ssn.length < 8){

        var warning = document.getElementById('warn');
        warning.textContent="please enter atleast 8 characters"
      }
      else{
      var warning = document.getElementById('warn');
        warning.textContent=""
      }

  }
  function validateEmail() 
{
 
    var email = document.getElementById('email').value;

 if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email))
  {
    
    var warning = document.getElementById('warn');
    warning.textContent=""
  }
 else{
        var warning = document.getElementById('warn');
    warning.textContent="please enter a valid email address"
 }
}

