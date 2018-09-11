//= require rails-ujs
//= require_tree .

const circle = document.querySelector(".circle");
if (circle !== null) {
  circle.addEventListener("click", (event) => {
    const audio = document.querySelector(".test");
    if (!audio) return;
    audio.currentTime = 0;
    audio.play();
  });
}
