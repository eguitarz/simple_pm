class PlansController < ApplicationController
	before_action :get_plan, only: [:show]

	def show
		@tasks = @plan.tasks

		respond_to do |format|
			format.html
			format.js
		end
	end

	private

	def get_plan
		@plan = Plan.find params[:id]
	end

end
