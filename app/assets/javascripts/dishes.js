$(function() {

  $('#ingredient-question-button').click(function(event){
    $('#ingredient-question').fadeTo(500, 0, function(){
      $('#ingredient-question').addClass('hidden');
      $('#cooking-method-question').removeClass('hidden');
    });
  });

    $('#cooking-method-question-button').click(function(event){
    $('#cooking-method-question').fadeTo(500, 0, function(){
      $('#cooking-method-question').addClass('hidden');
      $('#submit-dish').removeClass('hidden');
    });
  });


  $('#view-all-dishes').click(function(event){
    event.preventDefault();
    $('#dishes-index').removeClass('hidden');
  });

});



// $('selector').fadeTo(500, 0, function(){
//    $('selector').css("visibility", "hidden");   
// }); // duration, opacity, callback