//= require rails-ujs
//= require_tree .

const circle = document.querySelector(".circle");
if (circle !== null) {
  circle.addEventListener("click", (event) => {
    const audio = document.querySelector(".test");
    audio.currentTime = 0;
    audio.play();
  });
}
