// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready(function(){
	
	$('.reward').on('click', function() {
		console.log("I was clicked");
		var reward_amount = $(this).data('reward-amount');
		var project_id = $(this).data('project-id');
		$.ajax({
			url: '/pledges',
			type: 'POST',
			dataType: 'script',
			data: { pledge: {amount: reward_amount, project_id: project_id }}
		});
	});

});






