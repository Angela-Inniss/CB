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
































/*
const dropDown = document.getElementById("nav-bar-grey"); // find the element on the page you want to click on and create a variable for it
const navBarOpen = document.getElementById("new-drop-down-js"); //find the element on the page you want to slide in and out and create a variable for it

dropDown.onclick = showNav //calling the method .onclick on the element and setting it to the function so the function runs


// creating a variable to close the nav bar- first target the element >

const closeButton = document.getElementById("closebtn");
// when clicking on that element "onclick" do the function closeNav
closeButton.onclick = closeNav
//creating the actual function which is around an event listener


function showNav (event) {
    console.log(event)
    console.log(event.currentTarget);
    navBarOpen.classList.toggle("nav-open");
  }

  function closeNav (event) {
    console.log(event)
    console.log(event.currentTarget);
    navBarOpen.classList.toggle("nav-close");
  }
*/
