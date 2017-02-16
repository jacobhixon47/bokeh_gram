$(document).ready(function() {
  $(function() {
    $('.grid').isotope({
      itemSelector: '.grid-item'
    });
  });
});

$(document).on('turbolinks:load', function() {
  $(function() {
    $('#pictureInput').on('change', function(event) {
      var files = event.target.files;
      var image = files[0]
      var reader = new FileReader();
      reader.onload = function(file) {
        var img = new Image();
        console.log(file);
        img.src = file.target.result;
        $('#target').html(img);
      }
      reader.readAsDataURL(image);
      console.log(files);
    });
  });

  $(function() {
    $('.grid').isotope({
      itemSelector: '.grid-item'
    });
  });
});
