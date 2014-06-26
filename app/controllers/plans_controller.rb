class PlansController < ApplicationController
	def show
		@plan = Plan.find params[:id]
		@tasks = @plan.tasks

		respond_to do |format|
			format.html
			format.js
		end
	end
end
