$(document).on 'page:change', ->
	$selectedTask = null
	$('#task-list').delegate 'a', 'click', (e)->
		if $(this).hasClass('active') then closeTaskDetail() else openTaskDetail( $(this) )

	$('#task-detail').delegate '.close', 'click', ->
		closeTaskDetail()

	openTaskDetail = ($selectedTask)->
		$selectedTask.addClass('active')
		$selectedTask.siblings().removeClass('active')
		$('#task-detail').removeClass('hidden')


	closeTaskDetail = ->
		$('#task-list .active').removeClass('active')
		$('#task-detail').addClass('hidden')		