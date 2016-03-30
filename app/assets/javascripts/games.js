
$(document).ready(function() {
  // $(".search-box").on("submit", ".game_search", function(event){
  //     event.preventDefault();
  //     console.log("Hello");
  //     var baseURL = "http://www.boardgamegeek.com/xmlapi/search?search=";
  //     var data = $("#q_name_or_description_or_categories_name_cont").val();
  //     var url = baseURL + data;
  //     console.log(url);
  //     var ajaxRequest = $.ajax({
  //       dataType: "application/json",
  //       method: "GET",
  //       url: url
  //     });
  //   ajaxRequest.done(function(response){
  //     // var matches = response.matches;
  //     console.log(response);
  //   });
  // });


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
  });
});



// $(document).ready(function() {
// Number of times = average rating
// Append pic to <div id="star">
// for (i = 0; i < average rating; i++) {
//     Append pic to <div id="star">;
// }
// }