// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
var ready

ready = function(){
	$(".chosen-select").chosen({
		no_results_text: 'No results for that search'
	});
}

$(document).ready(ready);