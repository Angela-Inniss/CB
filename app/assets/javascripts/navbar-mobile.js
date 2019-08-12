//decalre variable user will click on
var sliderMenuMobile= document.getElementById("slider-menu-mobile");
var closeMobile = document.getElementById("X-mobile");

//addevent lsitener
sliderMenuMobile.addEventListener("click", (event) => {

 activateNav();
 });

closeMobile.addEventListener("click", (event) => {
 closeNav();
 });

//create function that should be executed on click and make sure it's called above in event listener


function activateNav(event) {
//decalre more variables if needed
  var sliderMenuOpen = document.getElementById("slider-menu-open-mobile");
      sliderMenuOpen.classList.toggle("width");
 }


  function closeNav (event) {
    var sliderMenuOpen = document.getElementById("slider-menu-open-mobile");
        sliderMenuOpen.classList.toggle("width-close");
  }





