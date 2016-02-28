$(function() {

  var dish = {};

  $('.ingredient-question-button').click(function(event){   
    $('#ingredient-question').fadeTo(500, 0, function(){
      $('#ingredient-question').addClass('hidden');
      $('#cooking-method-question').removeClass('hidden');
    });

  var ingredient = $(event.currentTarget).data('ingredient');
  dish.ingredient = ingredient;
  


  });

  $('.cooking-method-question-button').click(function(event){
    
    $('#cooking-method-question').fadeTo(500, 0, function(){
      $('#cooking-method-question').addClass('hidden');
      $('#sauce-question').removeClass('hidden');
    });
  
    var cookingmethod = $(event.currentTarget).data('cooking-method');
    dish.cookingmethod = cookingmethod
    

  });

  $('.sauce-question-button').click(function(event){
    $('#sauce-question').fadeTo(500, 0, function(){
      $('#sauce-question').addClass('hidden');
      $('#side-question').removeClass('hidden');
    });

    var sauce = $(event.currentTarget).data('sauce');
    dish.sauce = sauce

  });

  function arrayToSentence (arr) {
    if(arr.length === 0){
      return " "
    }
    else if (arr.length === 1){
      return " with " + arr.join(',')
    } else {
      var last = arr.pop();
      return " with " + arr.join(', ') + ' and ' + last;
    }
  } 

  $('#side-question-button').click(function(event){
    var sides = [];
    var checkboxes = $('input[type="checkbox"]:checked').each(function() {
      sides.push($(this).data('side'));
    });

    sidesDescription = arrayToSentence(sides);
  
    $('#side-question').fadeTo(500, 0, function(){
      $('#side-question').addClass('hidden');
      $('#submit-dish').removeClass('hidden');
    });

    $('#show-dish-name').append(dish.cookingmethod);
    $('#show-dish-name').append(" ");
    $('#show-dish-name').append(dish.ingredient); 
    $('#show-dish-name').append(" in ");
    $('#show-dish-name').append(dish.sauce);
    $('#show-dish-name').append(sidesDescription);

  });



   

  $('#save-dish').click(function(event){
    event.preventDefault();
    $('#sign-up-modal').modal('show');
  });

  $("#new_user").on("ajax:success", function (e, data, status, xhr) {
    $("#new_dish").submit();

  });


  $('#view-all-dishes').click(function(event){
    event.preventDefault();
    $('#dishes-index').removeClass('hidden');
  });

});



// $('selector').fadeTo(500, 0, function(){
//    $('selector').css("visibility", "hidden");   
// }); // duration, opacity, callback