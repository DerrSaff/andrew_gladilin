//= require jquery
//= require jquery_ujs
//= require underscore
//= require_tree .

$(document).ready( function() {

  var htmlCanvas = document.getElementById('space'),
      context = htmlCanvas.getContext('2d'),
      colors = ['#510001', '#3a0051', '#B70046', '#002B3A', '#007A0E', '#002823', '#007AC6', '#000000', '#C67A00', '#AD0200'];
  initialize();

  function initialize() {
    window.addEventListener('resize', resizeCanvas, false);
    resizeCanvas();
  }

  function glowingStars() {
    for (var i = 0; i < 50; i++) {
      $('body').append('<div class="star-' + i + '"></div>');
      var size = _.random(1, 3);
      $('.star-' + i).css({width: size + 'px', height: size + 'px'});
      $('.star-' + i).css({ top: _.random(1, htmlCanvas.height-8), left: _.random(1, htmlCanvas.width-8) });
      $('.star-' + i).css('animation-delay', _.random(1, 15) + 's');
      $('.star-' + i).css('animation-duration', _.random(1, 7) + 's');
    }
  }

  function clouds() {
    for (var i = 0; i < 7; i++) {
      $('body').append('<div class="cloud-' + i + '"></div>');
      $('.cloud-' + i).css({ top: _.random(1, htmlCanvas.height-8), left: _.random(1, htmlCanvas.width-8) });
    }
  }

  function redraw() {
    var angle = _.random(360);
    var backgroundColor = _.sample(colors);
    $('body').css('background-image', 'linear-gradient(' + angle + 'deg, #010011 0%, ' + backgroundColor + ' 100%)');

    for (var i = 0; i < 1000; i++) {
      context.beginPath();
      context.arc(_.random(1, htmlCanvas.width), _.random(1, htmlCanvas.height), _.random(0.4, 1), 0, 2 * Math.PI, false);
      context.fillStyle = 'white';
      context.fill();
    }
    $('[class^="star-"]').remove();
    glowingStars();
    $('[class^="cloud-"]').remove();
    clouds();
  }

  function resizeCanvas() {
    htmlCanvas.width = window.innerWidth;
    htmlCanvas.height = window.innerHeight;
    redraw();
  }

  $( ".planet" ).click( function(event) {
    event.stopPropagation();
    var planet = $(this);

    if ( ($(this).width() != 50) && ($(this).width() != 800) ) { return }

    planet.toggleClass('active-planet');

    if (planet.hasClass('active-planet')) {
      setTimeout( function() {
        planetContent(planet);
      }, 1000);
    }
    else {
      planetContent(planet);
    }
  });

  $("body").click( function() {
    planetContent($(".planet.active-planet"));
    $(".planet.active-planet").removeClass('active-planet');
  });

  function planetContent(object) {
    object.find('i').toggleClass('active-icon');
    object.find('h2').toggleClass('active-h');
    object.find('.content').toggle();
  }

  var current_photo = 1
  $(".currentPhoto").show();

  $(".previous").click ( function(event) {
    var sibling = $(".myphoto.currentPhoto").prev();

    if (sibling.is("div")) {
      sibling = $(".myphoto").last()
    }
    $(".currentPhoto").removeClass('currentPhoto');
    sibling.addClass('currentPhoto');
    event.stopPropagation();
  });

  $(".myphoto, .next").click ( function(event) {
    event.stopPropagation();
    nextPhoto();
  });

  $("a, span.email").click ( function(event) {
    event.stopPropagation();
  })

  function nextPhoto() {
    var sibling = $(".myphoto.currentPhoto").next();

    if (sibling.is("div")) {
      sibling = $(".myphoto").first()
    }
    $(".currentPhoto").removeClass('currentPhoto');
    sibling.addClass('currentPhoto');
  }

});
