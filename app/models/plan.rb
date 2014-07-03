class Plan < ActiveRecord::Base
	belongs_to :project
	has_many :tasks
	default_scope { order('updated_at DESC') }

	validates :relative_id, uniqueness: true
end
