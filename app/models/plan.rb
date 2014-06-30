class Plan < ActiveRecord::Base
	belongs_to :project
	has_many :tasks

	validates :relative_id, uniqueness: true
end
