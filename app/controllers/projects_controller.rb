class ProjectsController < ApplicationController
  def index
  	@project = Project.all.first
  end
end
