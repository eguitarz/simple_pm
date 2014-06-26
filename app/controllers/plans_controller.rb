class PlansController < ApplicationController
	def show
		@plan = Plan.find params[:id]
		@tasks = @plan.tasks
	end
end
