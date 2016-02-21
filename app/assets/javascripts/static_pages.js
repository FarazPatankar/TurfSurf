// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).on("ready", function() {
	$(".js-join").on("click", function() {
		console.log("hi");
		$("#if-you-join").show();
		$("#if-you-create").hide();
	})

	$(".js-create").on("click", function() {
		console.log("bye");
		$("#if-you-create").show();
		$("#if-you-join").hide();
	})
})