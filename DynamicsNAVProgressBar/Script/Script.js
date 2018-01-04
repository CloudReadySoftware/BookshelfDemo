function InitializeControl(controlId) {
    var controlAddIn = document.getElementById(controlId);
    controlAddIn.innerHTML = '<div id="NavProgress"><div id="NavBar"></div></div>';
}

function SetValue(progress) {
    if (progress > 100)
        progress = 100;
    var elem = document.getElementById("NavBar");
    elem.style.width = progress + '%';
}

function SetColor(color) {
    var elem = document.getElementById("NavBar");
    elem.style.backgroundColor = color;
}