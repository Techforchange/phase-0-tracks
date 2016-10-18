console.log("Script is running.");

var header2 = document.getElementsByTagName("h2")[0];
header2.style.backgroundColor = "#71c2ce";

function highlightText(event) {
    event.target.style.backgroundColor = "#000";
    event.target.style.color = "#fffefe";
};

var postTitle = document.getElementsByTagName("h3")[0];
postTitle.addEventListener("click", highlightText);

var paragraphs = document.getElementsByTagName("p");

for (i=0; i < paragraphs.length; i++) {
    paragraphs[i].style.backgroundColor = "#afedbe";
};