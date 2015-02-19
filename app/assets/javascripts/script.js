$(document).ready(function() {
 
  animationHover('.pro-j','rubberBand');

  //when the mouse hovers
  function animationHover(element, animation){
    element = $(element);
    element.hover(
      function() {
        element.addClass('animated ' + animation);
      },
      function(){
        //wait for animation to finish before removing classes
        window.setTimeout( function(){
          element.removeClass('animated ' + animation);
        }, 500);
      }
    );
  };
/////////////////////////////////title//////////////////////////////////////

   animationHover('.p-t','rubberBand');

  //when the mouse hovers
  function animationHover(element, animation){
    element = $(element);
    element.hover(
      function() {
        element.addClass('animated ' + animation);
      },
      function(){
        //wait for animation to finish before removing classes
        window.setTimeout( function(){
          element.removeClass('animated ' + animation);
        }, 500);
      }
    );
  };


















});