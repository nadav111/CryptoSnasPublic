function validateForm() {

    var res = true;

    res = usernameValidation() && res;
    res = passwordValidation() && res;
    res = confirmValidation() && res;
    res = emailValidation() && res;
    res = phoneValidation() && res;

    return res;
}

function UserNameValidation() {
    var userName = document.getElementById("UserName").value;
    var msgBox = document.getElementById("UserNameText");
    if (userName.length == 0) {
        msgBox.innerHTML = "You must enter username";
        return false;
    }
    if (!isLetter(userName[0])) {
        msgBox.innerHTML = "Username must start with a letter ";
        return false;
    }
    msgBox.innerHTML = "";
    return true;
}

function PasswordValidation() {
    var pass = document.getElementById("Password").value;
    var msgBox = document.getElementById("PasswordText");
    if (pass.length < 7) {
        msgBox.innerHTML = "password must contain at least 7 charactes";
        return false;
    }
    var specialChar = /[@!#$%^&*()-+]/; //regular Expression
    if (!specialChar.test(pass)) {
        msgBox.innerHTML = "password must contain one special char";
        return false;
    }
    msgBox.innerHTML = "";
    return true;
}

function RepeatPasswordValidation() {
    var pass = document.getElementById("Password").value;
    var confirm = document.getElementById("RepeatPassword").value;
    var msgBox = document.getElementById("RepeatPasswordText");

    if (pass != confirm) {
        msgBox.innerHTML = "confirm password doesn't match password";
        return false;
    }
    msgBox.innerHTML = "";
    return true;
}

function GmailValidation() {

    var email = document.getElementById("Gmail").value;
    var msgBox = document.getElementById("GmailText");

    var reg = /^\w+/;
    if (!reg.test(email)) {
        msgBox.innerHTML = "mail must start with letter or digit";
        return false;
    }
    msgBox.innerHTML = "";
    reg = /^\w+([\.-]?\w+)/;
    if (!reg.test(email)) {
        msgBox.innerHTML = "* mail can have only one [. or -] following letter ";
        return false;
    }
    msgBox.innerHTML = "";
    reg = /^\w+([\.-]?\w+)*@/;
    if (!reg.test(email)) {
        msgBox.innerHTML = "mail must have @";
        return false;
    }
    msgBox.innerHTML = "";
    reg = /^\w+([\.-]?\w+)*@\w+/;
    if (!reg.test(email)) {
        msgBox.innerHTML = "you need letters after @";
        return false;
    }
    msgBox.innerHTML = "";

    reg = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/;
    if (!reg.test(email)) {
        msgBox.innerHTML = "Invalid email";
        return false;
    }

    msgBox.innerHTML = "";
    return true;
}

function PhoneValidation() {
    var phone = document.getElementById("Phone").value;
    var msgBox = document.getElementById("PhoneText");

    var reg = /^0{1}(2|3|4|6|8|9|5[0|(2-8)]|73)-?[1-9]\d{6}$/;
    if (!reg.test(phone)) {
        msgBox.innerHTML = "phone number is illegal";
        return false;
    }
    msgBox.innerHTML = "";
    return true;
}

function isDigit(ch) {
    if (ch >= "0" && ch <= "9")
        true;
    false;
}

function isLetter(ch) {
    if ((ch >= "a" && ch <= "z") || (ch >= "A" && ch <= "Z"))
        return true;
    return false;
}

function isFirstCharLetter(str) {
    var firstName = document.getElementById("Fname").value;
    var msgBox = document.getElementById("FirstNameText");
    if (firstName.length == 0) {
        msgBox.innerHTML = "You must enter first name";
        return false;
    }
    if (!isLetter(firstName[0])) {
        msgBox.innerHTML = "First name must start with a letter ";
        return false;
    }
    msgBox.innerHTML = "";
    return true;
}

function areAllFirstNameCharsLetters(str) {
    var firstName = document.getElementById("Fname").value;
    var msgBox = document.getElementById("FirstNameText");

    for (var i = 0; i < firstName.length; i++) {
        if (!isLetter(firstName[i])) {
            msgBox.innerHTML = "First name should be composed of letters only.";
            return false;
        }
    }
    msgBox.innerHTML = "";
    return true;
}

function areAllLastNameCharsLetters(str) {
    var firstName = document.getElementById("LastName").value;
    var msgBox = document.getElementById("LastNameText");

    for (var i = 0; i < firstName.length; i++) {
        if (!isLetter(firstName[i])) {
            msgBox.innerHTML = "Last name should be composed of letters only.";
            return false;
        }
    }
    msgBox.innerHTML = "";
    return true;
}

function sequence(str) {
    // check for sequence of three characters;
    var seq = false;
    var a, b, c;
    for (var i = 1; i < str.length - 1; i++) {
        a = str.charCodeAt(i - 1);
        b = str.charCodeAt(i);
        c = str.charCodeAt(i + 1);

        if (a + 1 == b && b + 1 == c) {
            return true;
        }
    }
    return seq;
}

function confirm() {

    var con = document.getElementById("confirm").value;
    var pass = document.getElementById("pass").value;

    if (!(con == pass)) {
        document.getElementById("msgBox").innerHTML = "doesnt ...."
        return false;
    }
    return true;
}

function seq(str) {

    for (var i = 0; i < str.length - 2; i++) {

        if (str[i] == str[i + 1] && str[i] == str[i + 2]) {
            return false;
        }
    }
    return true;
}

function genderValidation() {
    var male = document.getElementById("male").value;
    var female = document.getElementById("female").value;
    var msgBox = document.getElementById("genderMsg");
    if (!male && !female) {
        msgBox.innerHTML = "Gender is mandatory.";
        return false;
    }
    msgBox.innerHTML = "";
    return true;
}