class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
    	t.string :title
    	t.string :description
    	t.string :impact_analysis
    	t.string :status
    	t.datetime :due_at
    	
      t.timestamps
    end
  end
end
