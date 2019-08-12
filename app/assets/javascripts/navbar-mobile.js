
//decalre variable user will click on
const sliderMenuMobile= document.getElementById("slider-menu-mobile");
const closeMobile = document.getElementById("X-mobile");

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
  const sliderMenuOpen = document.getElementById("slider-menu-open-mobile");
      sliderMenuOpen.classList.toggle("width");
 }


  function closeNav (event) {
    const sliderMenuOpen = document.getElementById("slider-menu-open-mobile");
        sliderMenuOpen.classList.toggle("width-close");
  }


