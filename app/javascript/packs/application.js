import "bootstrap";

const ids = [1, 2, 3, 4, 5, 6]
const laura = document.querySelector(".animated-gif");
const circle = document.querySelector(".circle");
const songs = document.querySelectorAll(".test");
const postits = document.querySelectorAll(".postit");
const gifs = document.querySelectorAll(".gif");

circle.addEventListener("click", (event) => {
  laura.classList.remove("hidden");
  circle.classList.add("hidden");
  var angle=0;
  setInterval(function(){
    laura.style.transform="rotateZ("+ angle++ +"deg)";
  }, 10);
  setTimeout(function () {
    laura.classList.add("hidden");
    const id = ids[Math.floor(Math.random()*ids.length)];
    console.log(id);
    const text = document.querySelector(`h1[data-id="${id}"]`);
    const gif = gifs[Math.floor(Math.random()*gifs.length)];
    gif.classList.remove("hidden");
    text.classList.remove("hidden");
    const song = document.querySelector(`audio[data-id="${id}"]`);
    song.currentTime = 0;
    song.play();
    song.onended = function() {
      location.reload();
    };
  }, 5000);
});
