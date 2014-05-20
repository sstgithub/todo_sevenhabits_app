$ ->

	$("#add").click ->
		$(".modal").fadeIn "fast"
		$(".new_field").val ""

	$("#close").click ->
		$(".modal").fadeOut "slow"

	