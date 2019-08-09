// alert('connected');

// recipe = {
//   coffee: ["Boil some water", "Brew the coffee grounds", "Pour coffee in the cup", "Add sugar and milk"],
//   lemonTea: ["Boil some water", "Steep the water in the tea", "Pour tea in the cup", "Add lemon"],
//   chocolate: ["Boil some water", "Add drinking chocolate powder to the water", "Pour chocolate in the cup"]
// };

// imgUrl = 'https://unsplash.com/photos/jn-HaGWe4yw';

//decalre variable user will click on

const sliderMenu = document.getElementById("slider-menu");
const close = document.getElementById("X");

//addevent lsitener
sliderMenu.addEventListener("click", (event) => {
 activateNav();
 });

close.addEventListener("click", (event) => {
 closeNav();
 });

//create function that should be executed on click and make sure it's called above in event listener


function activateNav(event) {
//decalre more variables if needed
  const sliderMenuOpen = document.getElementById("slider-menu-open");
     	sliderMenuOpen.classList.toggle("width");
 }


  function closeNav (event) {  	
  	const sliderMenuOpen = document.getElementById("slider-menu-open");
  		  sliderMenuOpen.classList.toggle("width-close");
  }

  