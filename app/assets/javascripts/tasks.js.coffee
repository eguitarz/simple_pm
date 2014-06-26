$(document).on 'page:change', ->
	$selectedTask = null

	openTaskDetail = ($selectedTask)->
		$selectedTask.addClass('active')
		$selectedTask.siblings().removeClass('active')
		$('#task-detail').removeClass('hidden')


	closeTaskDetail = ->
		$('#task-list .active').removeClass('active')
		$('#task-detail').addClass('hidden')		

	# Handle task item click event
	$('#task-list').delegate 'a', 'click', (e)->
		if $(this).hasClass('active') then closeTaskDetail() else openTaskDetail( $(this) )

	# Handle task-detail item close event
	$('#task-detail').delegate '.close', 'click', ->
		closeTaskDetail()

	# Handle task item permal link click event
	$('#task-list').delegate '.task-item', 'click', (e)->
		e.preventDefault()
		e.stopPropagation()
		window.location = $(this).attr('id').replace('-', 's/') # task-1 => tasks/1