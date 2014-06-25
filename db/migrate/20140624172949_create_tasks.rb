class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
    	t.string :title
    	t.string :description
    	t.string :impact_analysis
    	t.string :status
    	t.integer :estimated_work_hours
    	t.integer :health
    	t.integer :progress
    	t.datetime :due_at
    	
      t.timestamps
    end
  end
end
