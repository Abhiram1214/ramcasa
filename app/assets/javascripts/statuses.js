

$('.status').hover(function(event){
event.preventDefault();
$(this).find('.admin').fadeOut(100);
$(this).fadeIn(500);

});