import "bootstrap";
const metas = document.getElementsByTagName('meta');
const controller = metas[5].attributes.controller.value
if (controller === "pages") {
  const ids = [1, 2, 3, 4, 5, 6]
  const laura = document.querySelector(".animated-gif");
  const circle = document.querySelector(".circle");
  const roulette = document.querySelector(".roulette");
  const gifs = document.querySelectorAll(".gif");

  circle.addEventListener("click", (event) => {
    laura.classList.remove("hidden");
    circle.classList.add("hidden");
    roulette.play();
    var angle=0;
    setInterval(function(){
      laura.style.transform="rotateZ("+ angle++ +"deg)";
    }, 10);
    setTimeout(function () {
      laura.classList.add("hidden");
      const id = ids[Math.floor(Math.random()*ids.length)];
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
    }, 3000);
  });
}
else if (controller === "gages") {
  const laura = document.querySelector(".animated-gif");
  const circle = document.querySelector(".circle");
  const roulette = document.querySelector(".roulette");
  const gif = document.querySelector(".gif");
  const text = document.querySelector(".postit");
  const song = document.querySelector(".song");
  document.addEventListener("DOMContentLoaded", function(event) {
  laura.classList.remove("hidden");
  roulette.play();
  var angle=0;
    setInterval(function(){
      laura.style.transform="rotateZ("+ angle++ +"deg)";
    }, 10);
    setTimeout(function () {
      laura.classList.add("hidden");
      gif.classList.remove("hidden");
      text.classList.remove("hidden");
      song.currentTime = 0;
      song.play();
    }, 3000);
  });
}
else {
  console.log("autre");
}

const boutons = document.querySelectorAll("#copy");
boutons.forEach((bouton) => {
  bouton.addEventListener("click", (event) => {
    const index = event.currentTarget.dataset.gageid;
    const url = document.querySelector(`#input${index}`);
    console.log(url)
    url.select();
    document.execCommand("copy");
    alert("Lien copié !");
  });
});

 // icon.addEventListener("click", (event) => {
 //    const index = event.currentTarget.dataset.trash;
 //    console.log(document.getElementById(`question_options_attributes_${index}_photo`));
 //    document.getElementById(`question_options_attributes_${index}__destroy`).click();
 //  });
