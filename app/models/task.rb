class Task < ActiveRecord::Base
	belongs_to :plan

	validates :relative_id, uniqueness: true
end
