function validateForm() 
{
    var fullName = document.forms["registerForm"]["fullname"].value;
    var email = document.forms["registerForm"]["email"].value;
    var password = document.forms["registerForm"]["password"].value;
    var confirmPassword = document.forms["registerForm"]["confirm_password"].value;
    var gender = document.forms["registerForm"]["gender"].value;
    var phone = document.forms["registerForm"]["phone"].value;
    var address = document.forms["registerForm"]["address"].value;
    var position = document.forms["registerForm"]["position"].value;
    var experience = document.forms["registerForm"]["experience"].value;
    var skills = document.forms["registerForm"]["skills"].value;
    var languages = document.forms["registerForm"]["languages"].value;
	var distinction=document.forms["registerForm"]["distinction"].value;
    var emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    var passwordRegex = /^(?=.*\d)[a-zA-Z0-9]{5,}$/;
    if (fullName.length < 6) {
        alert("Full name must contain at least 6 letters");
        document.forms["registerForm"]["fullname"].focus();
        return false;
    }
    if (email === "") {
        alert("Please enter your email");
        document.forms["registerForm"]["email"].focus();
        return false;
    } else if (!emailRegex.test(email)) {
        alert("Please enter a valid email address");
        document.forms["registerForm"]["email"].focus();
        return false;
    }
    if (password.length < 5) {
        alert("Password must contain at least 5 characters including one digit");
        document.forms["register"]["password"].focus();
        return false;
    } 
	else if (!passwordRegex.test(password)) {
        alert("Password must contain at least 5 characters including one digit");
        document.forms["registerForm"]["password"].focus();
        return false;
    }
    if (confirmPassword === "") {
        alert("Please confirm your password");
        document.forms["registerForm"]["confirm_password"].focus();
        return false;
    }

    if (gender === "") {
        alert("Please select your gender");
        document.forms["registerForm"]["gender"].focus();
        return false;
    }
    if (phone === "") {
        alert("Please enter your phone number");
        document.forms["registerForm"]["phone"].focus();
        return false;
    }
	if (phone.length < 10) {
        alert("Phone Number must contain at least 10 digits");
        document.forms["registerForm"]["fullname"].focus();
        return false;
	}
    if (address === "") {
        alert("Please enter your address");
        document.forms["registerForm"]["address"].focus();
        return false;
    }
    if (position === "") {
        alert("Please select your position");
        document.forms["registerForm"]["position"].focus();
        return false;
    }
    if (experience === "") {
        alert("Please enter your years of experience");
        document.forms["registerForm"]["experience"].focus();
        return false;
    }
    if (skills === "") {
        alert("Please enter your skills");
        document.forms["registerForm"]["skills"].focus();
        return false;
    }
    if (languages === "") {
        alert("Please enter your languages");
        document.forms["registerForm"]["languages"].focus();
        return false;
    }
	if (distinction === "") {
        alert("Please enter your Distinction");
        document.forms["registerForm"]["confirm_password"].focus();
        return false;
    }
    if (password !== confirmPassword) {
        alert("Passwords do not match");
        document.forms["registerForm"]["confirm_password"].focus();
        return false;
    }
    return true;
}

