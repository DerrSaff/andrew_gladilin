//= require jquery
//= require jquery_ujs
//= require underscore
//= require jquery.autosize
//= require highlight.pack

$(document).ready(function(){
  $('textarea').autosize();
  $('pre code').each(function(i, block) {
    hljs.highlightBlock(block);
  });

  $('.popup').click( function () {
    $(this).hide();
  })

  $('.comment-info__response-link').click ( function () {
    $('.comments__form-response-label').show();
    var responseId = $(this).prev().html();
    console.log(responseId);
    $('.comments__form-response-id').html(' #' + responseId).show();
  });
});

// $(document).on('ready page:load', function() {
//     Prism.highlightAll();
// });

//
// $(document).ready( function() {
//
//   $(".tab").hide();
//
//   $("li").click(function(event) {
//     $(".active-tab").hide().removeClass(".active-tab");
//     var tab = $(this).data("tab");
//     $("div." + tab).show().addClass("active-tab");
//   })
//
//   var current_photo = 1
//   $(".currentPhoto").show();
//
//   $(".previous").click ( function(event) {
//     var sibling = $(".myphoto.currentPhoto").prev();
//
//     if (sibling.is("div")) {
//       sibling = $(".myphoto").last()
//     }
//     $(".currentPhoto").removeClass('currentPhoto');
//     sibling.addClass('currentPhoto');
//     event.stopPropagation();
//   });
//
//   $(".myphoto, .next").click ( function(event) {
//     event.stopPropagation();
//     nextPhoto();
//   });
//
//   $("a, span.email").click ( function(event) {
//     event.stopPropagation();
//   })
//
//   function nextPhoto() {
//     var sibling = $(".myphoto.currentPhoto").next();
//
//     if (sibling.is("div")) {
//       sibling = $(".myphoto").first()
//     }
//     $(".currentPhoto").removeClass('currentPhoto');
//     sibling.addClass('currentPhoto');
//   }
//
//   $(".achievement").click ( function(event) {
//     $(this).css('display', 'block').css('position', 'absolute').css('left', 56).css('top', 300);
//   });
//
// });
