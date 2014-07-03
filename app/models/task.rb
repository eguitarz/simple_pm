class Task < ActiveRecord::Base
	belongs_to :plan
	default_scope { order('updated_at DESC') }

	validates :relative_id, uniqueness: true
end
