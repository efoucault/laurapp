//= require rails-ujs
//= require_tree .

let circle = document.querySelector(".circle");
circle.addEventListener("click", (event) => {
  const audio = document.querySelector(".test");
  audio.currentTime = 0;
  audio.play();
});

