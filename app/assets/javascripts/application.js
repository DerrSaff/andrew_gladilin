//= require jquery
//= require jquery_ujs
//= require underscore
//= require_tree .

$(document).ready( function() {

  var w = window.innerWidth;
  var h = window.innerHeight;

  $('body').css('min-width', w);
  $('body').css('max-width', w);
  var angle = _.random(360);
  var colors = ['#510001', '#3a0051', '#B70046', '#002B3A', '#007A0E', '#002823', '#007AC6', '#000000', '#C67A00', '#AD0200'];
  var backgroundColor = _.sample(colors);
  $('body').css('background-image', 'linear-gradient(' + angle + 'deg, #010011 0%, ${backgroundColor} 100%)');

  for (var i = 0; i < 100; i++) {
    $('body').append('<div class="star-' + i + '"></div>');
    var size = _.random(1, 3);
    $('.star-' + i).css({width: size + 'px', height: size + 'px'});
    $('.star-' + i).css({ top: _.random(1, h-8), left: _.random(1, w-8) });
    $('.star-' + i).css('animation-delay', _.random(1, 15) + 's');
    $('.star-' + i).css('animation-duration', _.random(1, 7) + 's');
  }

  for (var i = 0; i < 1000; i++) {
    $('body').append('<div class="noglow-star-' + i + '"></div>');
    $('.noglow-star-' + i).css({ top: _.random(1, h-8), left: _.random(1, w-8) });
  }

  for (var i = 0; i < 4; i++) {
    $('body').append('<div class="cloud-' + i + '"></div>');
    $('.cloud-' + i).css({ top: _.random(1, h-8), left: _.random(1, w-8) });
  }

  $( ".planet" ).click( function() {
    event.stopPropagation();
    var planet = $(this);

    console.log($(this).width())

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

  $(".previous").click ( function () {
    var sibling = $(".myphoto.currentPhoto").prev();

    if (sibling.is("div")) {
      sibling = $(".myphoto").last()
    }
    $(".currentPhoto").removeClass('currentPhoto');
    sibling.addClass('currentPhoto');
    event.stopPropagation();

  });

  $(".myphoto, .next").click ( nextPhoto );

  // $(".next").click ( nextPhoto );

  $("a, span.email").click ( function () {
    event.stopPropagation();
  })

  function nextPhoto() {
    var sibling = $(".myphoto.currentPhoto").next();

    if (sibling.is("div")) {
      sibling = $(".myphoto").first()
    }
    $(".currentPhoto").removeClass('currentPhoto');
    sibling.addClass('currentPhoto');
    event.stopPropagation();
  }

});
