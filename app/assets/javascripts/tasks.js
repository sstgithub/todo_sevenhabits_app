$(function(){

	$('#add').click(function() {
		$('.new-task').fadeIn('fast');
		console.log('Hello')

	});

	$('#create-task').on('ajax:success', function(data, status, xhr) {
			$('.new-task').fadeOut('slow')
		});

	

	$('#closer').click(function() {
		$('.new-task').fadeOut('slow');
	});

});

// oncreate instead of hiding modal OR create partial for creating modal