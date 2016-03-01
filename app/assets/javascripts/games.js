// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).on("ready", function(){
	$('#Container').mixItUp({
	callbacks: {
		onMixFail: function(state){
			alert('No elements found matching '+state.activeFilter);
		}
	}
});

	$('.js-show-all').on("click", function(){
		$('.js-arena').hide();
		$('.js-day').hide();
	})

	$('.js-filter-arena').on("click", function(){
		$('.js-day').hide();
		$('.js-arena').show();
	})

	$('.js-filter-day').on("click", function(){
		$('.js-arena').hide();
		$('.js-day').show();
	})
})