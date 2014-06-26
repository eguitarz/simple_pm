$(document).on 'ready page:change', ->
	$('#plan-list a:first-child').click()
	$('#plan-list a').click (e)->
		$('#plan-list .active').removeClass('active')
		$(this).addClass('active')