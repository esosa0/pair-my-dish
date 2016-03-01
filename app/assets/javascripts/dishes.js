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
      console.log(response);
      
    }
  
  });

  

  $('#save-dish').click(function(event){
    event.preventDefault();
    if (window.loggedIn === false){
      $('#sign-up-modal').modal('show');
    } else {
      $("#new_dish").submit();
    }
  });

  $("#new_user").on("ajax:success", function (e, data, status, xhr) {
    $("#new_dish").submit();
  });


  $('#view-all-dishes').click(function(event){
    event.preventDefault();
    $('#dishes-index').removeClass('hidden');
  });

  $('#view-all-pairings').click(function(event){
    event.preventDefault();
    $('#all-pairings').removeClass('hidden');
    $('#our-pairing').addClass('hidden')
  });

  $('#let-us-choose').click(function(event){
    event.preventDefault();
    $('#our-pairing').removeClass('hidden');
    $('#all-pairings').addClass('hidden')
  });  



  
  //   build url with params before ajax call
    // var url = '/pairmydish?main_ingredient=chickent&sauce=tomato_sauce'
    // $.ajax({
    //   method: 'get',
    //   url: '/pairmydish?',
    //   data: {cookingmethod:dish.cookingmethod};
    //   success: handleResponse,
    //   error: function (error) {
    //     console.log('some error happenned');
    //   }
    // });

    // function handleResponse(response) {
    //   console.log(response)
    // }


  //   ajax call to get parameters pass parameters of dish 
  //   create route /pairmydish
  //   calls dish controller pair method 
  //   create a dish but dont save wine.pair 
  //   return json with array of wines
  //   on ajax succes build html from array of wines


});



