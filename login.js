	
   function validateForm() 
   {
    var email = document.forms["loginForm"]["email"].value;
    var password = document.forms["loginForm"]["password"].value;
    var emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    if (email === "") {
        alert("Please enter your email address.");
        document.forms["loginForm"]["email"].focus();
        return false;
    }
    else if (!emailRegex.test(email)) {
        alert("Please enter a valid email address.");
        document.forms["loginForm"]["email"].focus();
        return false;
    }
    if (password === "") {
        alert("Please enter your password.");
        document.forms["loginForm"]["password"].focus();
        return false;
    }
    return true; 
   }


