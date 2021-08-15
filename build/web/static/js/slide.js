
var flag = false;

var btnPlay = document.getElementById("playbtn");
var imageSlider = document.getElementById("imageGaler");

imageSlider.addEventListener("mouseenter", function() {
    if (flag){
        btnPlay.style.opacity = 0.5;
    }
});
imageSlider.addEventListener("mouseleave",  function() {
    if (flag){
        btnPlay.style.opacity = 0;
    }
});

function showSlides() {
  if (flag){
      var i;
      var slides = document.getElementsByClassName("mySlides");
      for (i = 0; i < slides.length; i++) {
        slides[i].className = slides[i].className.replace("show-on", "show-off");
      }
      slideIndex++;
      if (slideIndex > slides.length) {slideIndex = 1}
      slides[slideIndex-1].className = slides[slideIndex-1].className.replace("show-off", "show-on");
  }
  setTimeout(showSlides, 2000); // Change image every 2 seconds      
}

function clickBtn(){
    flag = !flag;
    if (flag){        
        btnPlay.value = "Pause";
        btnPlay.style.opacity = 0;
    }
    else{
        btnPlay.value = "Play";
        btnPlay.style.opacity = 0.5;
    }
}