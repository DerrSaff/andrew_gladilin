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

  var responseId = 0;
  var previewId = 0;

  $('.comment-info__response-link').click ( function () {
    responseId = $(this).prev().html();

    $('.comments__form-response-label').show();
    $('.comments__form-response-id')
      .html( '#' + responseId)
      .show();
    $('.comments__form-response-link').attr('href', '#comment-' + responseId)
    $('#comment_answer').val(responseId);
  });

  $('.comment__preview-id, .comments__form-response-id').hover( showResponse, hideResponse );

  function showResponse() {
    var pos = $(this).position();
    previewId = parseInt($(this).html().substr(1));
    console.log($(this).html());
    $('.comments__form-preview')
      .html($('#comment-' + previewId).html())
      .css({
        top: (pos.top - $('#comment-' + previewId).height()) + "px",
        left: (pos.left + 30) + "px"})
      .find('.comment-info__response-link')
      .remove();
    $('.comments__form-preview').show();
  }

  function hideResponse () {
    $('.comments__form-preview').hide().html('');
  }

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
