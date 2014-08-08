function init_slider(carousel) {
    // Pause autoscrolling if the user moves with the cursor over the clip.
    carousel.clip.hover(function() {
        carousel.stopAuto();
    }, function() {
        carousel.startAuto();
    });

	$('#col .slider-controls a').bind('click', function() {
		var index = $(this).parent().find('a').index(this) + 1;
		carousel.scroll( index );
		return false;
	});
	
	$('#col .slider-nav .next').bind('click', function() {
		carousel.next();
		return false;
	});
	
	$('#col .slider-nav .prev').bind('click', function() {
		carousel.prev();
		return false;
	});
};

jQuery(document).ready(function() {
	$("#slider").jcarousel({
		scroll: 1,
		auto: 5,
		wrap: 'circular',
		initCallback: init_slider,
		buttonNextHTML: null,
		buttonPrevHTML: null
	});
});
