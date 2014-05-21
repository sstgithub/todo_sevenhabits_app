$(function() {


	// WAY 1 - customizable way
	// $('form#new_task').on('submit', function(event) {

	// 	event.preventDefault();
		
	// 	console.log('testing')
	// 	var params = $(this).serialize(); //serialize turns anything into a hash
	// 	console.log(this)
	// 	$.ajax({
	// 		url: $(this).attr('action'),
	// 		type: "POST",
	// 		data: params,
	// 		dataType: "JSON"
	// 	}).success(function(json) {
	// 		var name = json.name
	// 		var description = json.description
	// 		console.log(name);	

	// 		$('#something').append('<tr><td>' + name + '</td><td>' + description + '</td></tr>');
			
	// 		$('.modal').fadeOut('fast');

	// 		});
			
	// 	});

	//WAY 2 - rails defined way
	// $('form').on('ajax:complete', function(event, data, status, xhr) {
	// 	console.log($.parseJSON(data.responseText))
	// 	var item = $.parseJSON(data.responseText),
	// 			name = item.name
	// 			console.log(item.description)
	// 			description = item.description
	// 	$('#something').append('<tr><td>' + name + '</td><td>' + description + '</td></tr>')
	// 	$('.modal').fadeOut('fast');
	// });

	//WAY 3 - with _task.json.bldr
	$('form').on('ajax:complete', function(event, data, status, xhr) {
		var item = $.parseJSON(data.responseText).task
				name = item.name
				description = item.description
		$('#something').append('<tr><td>' + item.name + '</td><td>' + item.description + '</td></tr>')
		$('.modal').fadeOut('fast');
	});


});