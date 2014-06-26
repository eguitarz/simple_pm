class TasksController < ApplicationController
	def show
		@task = Task.find params[:id]

		respond_to do |format|
			format.html
			format.js
		end
	end
end
