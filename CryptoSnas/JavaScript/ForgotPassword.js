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