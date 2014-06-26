$(document).on 'page:change', ->
	$('#plan-list a').click (e)->
		$('#plan-list .active').removeClass('active')
		$(this).addClass('active')
	$('#plan-list a:first-child').click()