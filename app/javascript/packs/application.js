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


//could wrap this in a function?

//const imageChange = document.getElementById("test");
 // imageChange.addEventListener("click", (event) => {
    //do something
    //console.log(event);
    //console.log("you clicked yay");
   // console.log(event.currentTarget);
  //  imageChange.classList.toggle("padding-js");
 // });

//classList is to add a class
//event.CurrentTArget attacks that element specificallythe one u are clicking on


/*  const imageChangeFlower = document.getElementById("flower");
    imageChangeFlower.addEventListener("click", (event) => {
      console.log("youclickedme");
      imageChangeFlower.classList.toggle("padding-js");
      imageChangeFlower.insertAdjacentHTML("beforeend", "<li>Luke</li>");
});
*/
// get current image on click change for image below









