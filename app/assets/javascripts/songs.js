function createSong(title, year, url, artistId, albumId) {
  $.ajax({
    type: "POST",
    url: "/artists/" + artistId + "albums" + albumId + "/songs.json",
    data: JSON.stringify({
      song: {
        title: title,
        year_released: year,
        url: url
      }
    }),

    contentType: "application/json",
    dataType: "json"})

    .success(function(data) {
      var listItem = $('<li></li>').html(data.song.name);
      $("#songs").append( listItem );
      $("#song-name").val(null);
      $("#notice").html(data.message);
    })

    .fail(function(error) {
      errors = JSON.parse(error.responseText).error

      $.each(errors, function(index, value) {
        var listItem = $('<li></li>').html(value);
        $("#errors").append(listItem);
      });
    });
}

function submitSong(event) {
  event.preventDefault();

  var title = $("#song-title").val();
  var year = $("#song-year").val();
  var url = $("#song-url").val();
  var artistId = $("#song-title").data("artist_id");
  var albumId = $("#song-title").data("album_id");

  createSong(title, year, url, artistId, albumId);
}

$(document).ready(function() {
  $("form").bind('submit', submitSong);
});
