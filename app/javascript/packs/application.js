/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

console.log('Hello World from Webpacker')

import AOS from "aos";
import 'aos/dist/aos.css';

AOS.init();
//decalre variable user will click on


/*//decalre variable user will click on

var sliderMenu = document.getElementById("slider-menu");
var close = document.getElementById("X");

//addevent lsitener
sliderMenu.addEventListener("click", (event) => {
 activateNav();
 console.log(event)
 });

close.addEventListener("click", (event) => {
 closeNav();
 });

//create function that should be executed on click and make sure it's called above in event listener


function activateNav(event) {
//decalre more variables if needed
  var sliderMenuOpen = document.getElementById("slider-menu-open");
      sliderMenuOpen.classList.
      toggle("width");
 }


  function closeNav (event) {
    var sliderMenuOpen = document.getElementById("slider-menu-open");
        sliderMenuOpen.classList.toggle("width-close");
  }*/
