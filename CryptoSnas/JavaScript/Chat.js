var know = {
    "hello": "Snas: Hi",
    "how are you?": "Snas: Good",
    "What is your favorite song?": "Snas: Sibat Hasibot",
    "Can you play Sibat Hasibot?": "Snas: Yes",
    "What is Bitcoin?": "Snas: Go to currencies and learn 🥊📢🥊",
    "I love you": "Snas: Love you too my friend",
    "What is Binance": "Snas: Go to Exchanges and learn 🥊📢🥊"
}
function talk() {
    var user = document.getElementById("userBox").value;
    document.getElementById("chatLog").innerHTML += user + "<br>";
    if (user == "Rock") {
        document.getElementById("chatLog").innerHTML += "Snas: Paper I Won" + "<br>";
    }
    else if (user == "Paper") {
        document.getElementById("chatLog").innerHTML += "Snas: Scissors I Won" + "<br>";
    }
    else if (user == "Scissors") {
        document.getElementById("chatLog").innerHTML += "Snas: Rock I Won" + "<br>";
    }
    else if (user == "Can you play Sibat Hasibot?") {
        document.getElementById("chatLog").innerHTML += "Snas: https://www.youtube.com/watch?v=T5Wf3gmF6Do" + "<br>";
    }
    else {
        if (user in know) {
            document.getElementById("chatLog").innerHTML += know[user] + "<br>";
        } else {
            document.getElementById("chatLog").innerHTML += "Snas: I am not a genius , ask me something that I know!<br>";
        }
    }
}