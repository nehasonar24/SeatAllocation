<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
 crossorigin="anonymous">
<link rel="stylesheet" href="Registration.css">


</head>
<body>
<section class="forms-section">
  <h1 class="section-title">Login & Signup </h1>
  
  <div class="forms">
    <div class="form-wrapper is-active">
      <button type="button" class="switcher switcher-login">
        Login
        <span class="underline"></span>
      </button>
      <form class="form form-login">
        <fieldset>
          <legend>Please, enter your Username and Password for login.</legend>
          <div class="input-block">
            <label for="login-email">Username</label>
            <input id="login-email" type="text" required>
          </div>
          <div class="input-block">
            <label for="login-password">Password</label>
            <input id="login-password" type="password" required>
          </div>
        </fieldset>
        <button type="submit" class="btn-login">Login</button>
      </form>
    </div>
    <div class="form-wrapper">
      <button type="button" class="switcher switcher-signup">
        Sign Up
        <span class="underline"></span>
      </button>
      <form class="form form-signup" method="post" action="ResisterEmployeeServlet">
        <fieldset>
          <legend>Please, enter your email, password and password confirmation for sign up.</legend>
                 
          <div class="input-block">
            <label for="signup-username">FirstName</label>
            <input id="signup-email" name="FirstName"  required>
          </div>
          <div class="input-block">
            <label for="signup-username">Lastname</label>
            <input id="signup-email" name="LastName"  required>
          </div>
          <div class="input-block">
            <label for="signup-username">Username</label>
            <input id="signup-email" name="Username"  required>
          </div>
          <div class="input-block">
            <label for="signup-username">TeamID</label>
            <input id="signup-email" name="TeamID"  required>
          </div>
          <input type="checkbox"  name="IsManager" placeholder="IsManager" value="true" id="isManager" onclick="isMgrFunction()" checked >Manager</input>
          <div class="input-block">
            <label for="signup-username">ManagerID</label>
            <input id="mgrId" name="ManagerID"  >
          </div>
          
          <div class="input-block">
            <label for="signup-password">Password</label>
            <input id="signup-password" type="password" name = "password" required>
          </div>
        </fieldset>
        <button type="submit" value ="send" class="btn-signup">Sign Up</button>
      </form>
    </div>
  </div>
</section>

  
<script >
const switchers = [...document.querySelectorAll('.switcher')]

switchers.forEach(item => {
	item.addEventListener('click', function() {
		switchers.forEach(item => item.parentElement.classList.remove('is-active'))
		this.parentElement.classList.add('is-active')
	})
})

function isMgrFunction(){
	var checkBox = document.getElementById("isManager");
	var text = document.getElementById("mgrId");

	  // If the checkbox is checked, display the output text
	  if (checkBox.checked == true){
	    text.style.display = "block";
	    
	  } else {
	    text.style.display = "none";
	    document.getElementById("mgrId").value=0;
	    
	  }
}
</script> 


</body>
</html>