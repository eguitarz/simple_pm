$(document).on 'ready page:change', ->
	$('#plan-list a').click (e)->
		$('#plan-list .active').removeClass('active')
		$(this).addClass('active')