class TasksController < ApplicationController
	before_action :get_task, only: [:show]

	def show
		respond_to do |format|
			format.html
			format.js
		end
	end

	private

	def get_task
		@task = Task.find params[:id]
	end
end
