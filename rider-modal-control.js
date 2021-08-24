const riderButtons = document.querySelectorAll(".rider-btn");

for (let riderButton of riderButtons) {
  riderButton.addEventListener("mouseover", function () {
    riderButton.children[0].classList.add("d-none");
    riderButton.children[1].classList.remove("d-none");
  });
  riderButton.addEventListener("mouseleave", function () {
    riderButton.children[1].classList.add("d-none");
    riderButton.children[0].classList.remove("d-none");
  });
  riderButton.addEventListener("focus", function () {
    riderButton.children[0].classList.add("d-none");
    riderButton.children[1].classList.remove("d-none");
  });
  riderButton.addEventListener("touchstart", function () {
    riderButton.children[0].classList.add("d-none");
    riderButton.children[1].classList.remove("d-none");
  });
  riderButton.addEventListener("mouseup", function () {
    riderButton.children[1].classList.add("d-none");
    riderButton.children[0].classList.remove("d-none");
  });
}
console.log(foodpandaLinks);
