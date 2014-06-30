# page:receive is a must for browser back event
$(document).on 'page:receive page:change', ->
	openPlanDetail = ($selectedTask)->
		$selectedTask.addClass('focus')
		$selectedTask.siblings().removeClass('focus')
		$('#task-detail').removeClass('hidden')

		$('#task-list .active').removeClass('active')

	closePlanDetail = ->
		$('#plan-list .focus').removeClass('focus')
		$('#task-detail').addClass('hidden')

	$('#plan-list a').click (e)->
		$('#plan-list .active').removeClass('active')
		$(this).addClass('active')
		# if $(this).hasClass('focus') then closePlanDetail() else openPlanDetail( $(this) )
		openPlanDetail( $(this) )
	
	# Click the first plan when init
	$('#plan-list a:first-child').click()

	# Handle plan item permallink click event
	$('#plan-list').delegate '.plan-item', 'click', (e)->
		e.preventDefault()
		e.stopPropagation()
		window.location = $(this).attr('id').replace('-l-', 's/') # task-1 => tasks/1