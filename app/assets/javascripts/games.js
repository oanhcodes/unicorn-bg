
$(document).ready(function() {
  $(".search-box").on("submit", ".game_search", function(event){
      event.preventDefault();

      var query = $(this).find('input[type="search"]').val();
      $.get('/search/' + query, function(response){
        $(".game-list").append(response);
      })
  });
});
