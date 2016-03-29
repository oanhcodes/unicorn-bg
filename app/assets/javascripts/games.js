
$(document).ready(function() {
  $(".search-box").on("submit", ".game_search", function(event){
      event.preventDefault();
      console.log("Hello");
      var baseURL = "http://www.boardgamegeek.com/xmlapi/search?search=";
      var data = $("#q_name_or_description_or_categories_name_cont").val();
      var url = baseURL + data;
      console.log(url);
      var ajaxRequest = $.ajax({
        dataType: "application/json",
        method: "GET",
        url: url
      });
    ajaxRequest.done(function(response){
      // var matches = response.matches;
      console.log(response);
    }); 
  });  
});
