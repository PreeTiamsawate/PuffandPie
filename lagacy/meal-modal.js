// const newMealOne = document.querySelector('#newMeal-one')
// const newMealTwo = document.querySelector('#newMeal-two')
// const newMealThree = document.querySelector('#newMeal-three')
// const modalNameMeal = document.querySelector('#modal-name-meal')
// const modalImgMeal = document.querySelector('#modal-img-meal')
// assignModal = function(){
//   modalImgMeal.setAttribute("src",this.children[0].getAttribute('src'));
//   modalNameMeal.innerHTML = this.children[1].innerHTML;  
// }
// newMealOne.addEventListener('click', assignModal);
// newMealTwo.addEventListener('click', assignModal);
// newMealThree.addEventListener('click', assignModal);

const modalName = document.querySelector('.modal-name')
const modalImg = document.querySelector('.modal-img')
const modalIngredient = document.querySelector('.modal-ingredient')
const modalDetail = document.querySelector('.modal-detail')
const modalPreserve = document.querySelector('.modal-preservation')

const cardBigs = document.querySelectorAll('.card-big')
const cardSmalls = document.querySelectorAll('.card-small')
const cardMobileNews = document.querySelectorAll('.card-mobile-new')
const assignModal= function(){
  modalImg.setAttribute("src",this.children[0].getAttribute('src'));
  modalName.innerHTML = this.children[1].children[0].innerHTML;
  modalIngredient.innerHTML = this.children[2].innerHTML;
  modalDetail.innerHTML = this.children[3].innerHTML; 
  modalPreserve.innerHTML = this.children[4].innerHTML; 
}

for(cardBig of cardBigs){
  cardBig.addEventListener('click', assignModal);
}
for(cardSmall of cardSmalls){
  cardSmall.addEventListener('click', assignModal);
}
for(cardMobileNew of cardMobileNews){
  cardMobileNew.addEventListener('click', assignModal);
}

