//= require rails-ujs
//= require_tree .

let circle = document.querySelector(".circle");
circle.addEventListener("click", (event) => {
  let audio = document.querySelector(".test");
  audio.currentTime = 0;
  audio.play();
});

