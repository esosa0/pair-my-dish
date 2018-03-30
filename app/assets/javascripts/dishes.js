$(function() {

  String.prototype.titleize = function() {
    return this.charAt(0).toUpperCase() + this.slice(1);
  }
  
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
    dish.cookingmethod = (cookingmethod).titleize()

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
    var sideIds = [];
    var checkboxes = $('input[type="checkbox"]:checked').each(function() {
      sideIds.push($(this).val());
      sides.push($(this).data('side'));
    });

    var sidesDescription = arrayToSentence(sides);
  
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

    var ingredientId = $('.ingredient-question-button:checked').val();
    var cookingMethodId = $('.cooking-method-question-button:checked').val();
    var sauceId = $('.sauce-question-button:checked').val();

    $.ajax({
      method: 'get',
      url: '/api',
      data: { 
        ingredient_id: ingredientId, 
        cooking_method_id: cookingMethodId, 
        sauce_id: sauceId, 
        side_ids: sideIds
      },
      success: handleResponse,
      error: function (error) {
        console.log('some error happenned');
      }
    });

    function handleResponse(response) {
      if(response.length > 1) {
        $('#number-of-wines').append(response.length + " wines")
      }
      for(var i = 0; i <response.length; i++){
        if(response[i].body < 4) {

          $('#show-wine-name').append('<li class="list-inline white"><span class="name">' + (response[i].name).titleize() + '</span></li>');
        } else if (response[i].body === 4){
          $('#show-wine-name').append('<li class="list-inline pink"><span class="name">' + (response[i].name).titleize() + '</span></li>');
        } else {
          $('#show-wine-name').append('<li class="list-inline red"><span class="name">' + (response[i].name).titleize() + '</span></li>');
        }       
      }
    }
  });

  $('#save-dish').click(function(event){
    event.preventDefault();
    if (window.loggedIn === false){
      $.ajax({
        method: 'get',
        dataType: 'html',
        url: '/users/sign_up',
        success: function(response){
          $('#sign-up-modal .modal-body').html(response)
          $('#sign-up-modal').modal('show');
        },
        error: function (error) {
          console.log('some error happenned');
        }
      });
    } else {
      $("#new_dish").submit();
    }
  });

  $('#view-all-dishes').click(function(event){
    event.preventDefault();
    $('#dishes-index').removeClass('hidden');
  });

  $('#view-all-pairings').click(function(event){
    event.preventDefault();
    $('#all-pairings').toggleClass('hidden');
    $('#our-pairing').addClass('hidden')
  });

  $('#let-us-choose').click(function(event){
    event.preventDefault();
    $('#our-pairing').toggleClass('hidden');
    $('#all-pairings').addClass('hidden')
  });  

});



