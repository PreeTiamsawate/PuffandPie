const modalName = document.querySelector(".modal-name");
const modalImg = document.querySelector(".modal-img");
const modalIngredient = document.querySelector(".modal-ingredient");
const modalDetail = document.querySelector(".modal-detail");
const modalPreserve = document.querySelector(".modal-preservation");

const cardBigs = document.querySelectorAll(".card-big");
const cardSmalls = document.querySelectorAll(".card-small");
const cardMobileNews = document.querySelectorAll(".card-mobile-new");
const assignModal = function () {
  let n = 0;
  if (this.children[1].tagName === "IMG") {
    n = 1;
  }

  modalImg.setAttribute("src", this.children[n].getAttribute("src"));
  modalName.innerHTML = this.children[n + 1].children[0].innerHTML;
  modalIngredient.innerHTML = this.children[n + 2].innerHTML;
  modalDetail.innerHTML = this.children[n + 3].innerHTML;
  modalPreserve.innerHTML = this.children[n + 4].innerHTML;
};

for (cardBig of cardBigs) {
  cardBig.addEventListener("click", assignModal);
}
for (cardSmall of cardSmalls) {
  cardSmall.addEventListener("click", assignModal);
}
for (cardMobileNew of cardMobileNews) {
  cardMobileNew.addEventListener("click", assignModal);
}
