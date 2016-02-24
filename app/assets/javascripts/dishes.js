$(function() {

  $('#ingredient-question-button').click(function(event){
    event.preventDefault();
    $('#ingredient-question').fadeTo(500, 0, function(){
      $('#ingredient-question').addClass('hidden');
      $('#cooking-method-question').removeClass('hidden');
    });
  });
});



// $('selector').fadeTo(500, 0, function(){
//    $('selector').css("visibility", "hidden");   
// }); // duration, opacity, callback