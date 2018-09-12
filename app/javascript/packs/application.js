import "bootstrap";

const circle = document.querySelector(".circle");
circle.addEventListener("click", (event) => {
  const songs = document.querySelectorAll(".test");
  const gifs = document.querySelectorAll(".animated-gif");
  gifs.forEach((gif) => {
    gif.classList.add("hidden");
  });
  gifs[Math.floor(Math.random()*gifs.length)].classList.remove("hidden");
  var song = songs[Math.floor(Math.random()*songs.length)];
  song.currentTime = 0;
  song.play();
});
