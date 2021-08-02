// Scroll Control=========================================================
var scrollEnd = document.querySelectorAll('.scroll-end')
// console.log(scrollEnd[0]);

var x = window.matchMedia("(max-width: 767px)")

function scrollPosition(x){
  if(x.matches){
    for(aDiv of scrollEnd){
      aDiv.scrollLeft = 0;
    }
  }else{
    for(aDiv of scrollEnd){
      aDiv.scrollLeft = aDiv.scrollWidth;
    }
  }
}
scrollPosition(x);




