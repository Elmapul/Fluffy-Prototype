function sampleCommand(){
voiceCommand="jump"
}



 function addButton() {
var btn = document.createElement("BUTTON");
btn.setAttribute("innerHTML", "clique");
btn.setAttribute("onclick", sampleCommand());

var x = document.getElementById("output-header");

x.appendChild(btn);
}
addButton();

