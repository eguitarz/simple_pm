# page:receive is a must for browser back event
$(document).on 'page:receive page:change', ->
	$('#plan-list a').click (e)->
		$('#plan-list .active').removeClass('active')
		$(this).addClass('active')
	$('#plan-list a:first-child').click()

	# Handle plan item permal link click event
	$('#plan-list').delegate '.plan-item', 'click', (e)->
		e.preventDefault()
		e.stopPropagation()
		window.location = $(this).attr('id').replace('-l-', 's/') # task-1 => tasks/1