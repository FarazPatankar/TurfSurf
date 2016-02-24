// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on("ready", function() {
	$(".js-confirm-booking").on("click", function() {
		console.log("hi");
		$(".js-reserve-time").show();
	})
})