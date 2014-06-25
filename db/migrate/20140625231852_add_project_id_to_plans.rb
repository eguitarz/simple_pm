class AddProjectIdToPlans < ActiveRecord::Migration
  def change
  	add_column :plans, :project_id, :integer
  end
end
