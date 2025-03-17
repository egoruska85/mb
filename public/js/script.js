/* ------------------------------------------------------------

Template Name: Moo Slider
Description: Moo Slider - A Modern Image Slider with Advanced Effects.
Template URI: https://maindustries.in/mooslider
Version:  1.0
Author:		Alteen

------------------------------------------------------------- */

"use strict"

// Get references to DOM elements
let nextButton = document.getElementById('next');
let prevButton = document.getElementById('prev');
let carousel = document.querySelector('.carousel');
let listHTML = document.querySelector('.carousel .list');
let seeMoreButtons = document.querySelectorAll('.seeMore');
let backButton = document.getElementById('back');

// Set up event handlers for next and previous buttons
nextButton.onclick = function(){
  showSlider('next'); // Show next slide
}
prevButton.onclick = function(){
  showSlider('prev'); // Show previous slide
}
let unAccepptClick; // Variable to hold timeout

// Function to show slides
const showSlider = (type) => {
  nextButton.style.pointerEvents = 'none';
  prevButton.style.pointerEvents = 'none';

  carousel.classList.remove('next', 'prev'); // Remove previous transition classes
  let items = document.querySelectorAll('.carousel .list .item');
  if(type === 'next'){
      listHTML.appendChild(items[0]);
      carousel.classList.add('next');
  }else{
    let positionLast = items.length -1;
    listHTML.prepend(items[positionLast]);
    carousel.classList.add('prev');
  }

  clearTimeout(unAccepptClick);
  unAccepptClick = setTimeout(()=>{
      nextButton.style.pointerEvents = 'auto'; // Re-enable button clicks after transition
      prevButton.style.pointerEvents = 'auto';
  }, 1400)
}

// Set up event handlers for 'See More' buttons
  seeMoreButtons.forEach((button) => {
    button.onclick = function(){
        carousel.classList.remove('next', 'prev'); // Remove transition classes
        carousel.classList.add('showDetail'); // Add 'showDetail' class to expand item
    }
  });

  // Set up event handler for 'Back' button
  backButton.onclick = function(){
    carousel.classList.remove('showDetail');
  }
