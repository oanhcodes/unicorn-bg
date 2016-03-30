
$(document).ready(function() {
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
