
$(document).ready(function() {


$(".review-container").on("submit", "form", function(event) {
  event.preventDefault();
  var $form = $(this);
  var formUrl = $form.attr("action");
  var formMethod = $form.attr("method");
  var data = $form.serialize();
  var request = $.ajax({
    type: formMethod,
    url: formUrl,
    data: data
    });
  request.done(function(response){
    $(".review-list").prepend(response);
    $('form').each(function(){
      this.reset();
      });
    });

  $(".search-box").on("submit", ".game_search", function(event){
      event.preventDefault();

      var query = $(this).find('input[type="search"]').val();
      var request = $.get('/search/' + query, function(response){
        $(".game-list").append(response);
      })


      request.fail(function(xhr, status, errorThrown) {
        if(xhr.status === 500) {
          window.location = "/500"
        }
      })
  });
});



// $(document).ready(function() {
// Number of times = average rating
// Append pic to <div id="star">
// for (i = 0; i < average rating; i++) {
//     Append pic to <div id="star">;
// }
// }