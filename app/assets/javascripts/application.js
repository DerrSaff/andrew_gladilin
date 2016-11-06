// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
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
  $('body').css('background-image', `linear-gradient(${angle}deg, #010011 0%, ${backgroundColor} 100%)`);

  for (var i = 0; i < 100; i++) {
    $('body').append(`<div class="star-${i}"></div>`);
    var size = _.random(1, 3);
    $(`.star-${i}`).css({width: size + 'px', height: size + 'px'});
    $(`.star-${i}`).css({ top: _.random(1, h-8), left: _.random(1, w-8) });
    $(`.star-${i}`).css('animation-delay', _.random(1, 15) + 's');
    $(`.star-${i}`).css('animation-duration', _.random(1, 7) + 's');
  }

  for (var i = 0; i < 1000; i++) {
    $('body').append(`<div class="noglow-star-${i}"></div>`);
    $(`.noglow-star-${i}`).css({ top: _.random(1, h-8), left: _.random(1, w-8) });
  }

  for (var i = 0; i < 4; i++) {
    $('body').append(`<div class="cloud-${i}"></div>`);
    $(`.cloud-${i}`).css({ top: _.random(1, h-8), left: _.random(1, w-8) });
  }

});
