class Project < ActiveRecord::Base
	has_many :plans
	has_many :tasks, through: :plans
end
