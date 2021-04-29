button1 = document.getElementById("button1-cent");
button2 = document.getElementById("button2-excent");
buttonExit = document.getElementById("button-exit");
imgCentric = document.getElementById("img-centric");
imgExcentric = document.getElementById("img-excentric");


button1.addEventListener("click", function() {
  if(imgCentric.style.display === "none") {
    imgCentric.style.display = "block";
    imgExcentric.style.display = "none";
  }
});
button2.addEventListener("click", function() {
  if(imgExcentric.style.display === "none") {
    imgExcentric.style.display = "block";
    imgCentric.style.display = "none"
  }
});
buttonExit.addEventListener("click", function() {
  open(location, '_self').close();
  // window.close()
});
