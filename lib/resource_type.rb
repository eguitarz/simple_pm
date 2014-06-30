module ResourceType
	PLAN = 1
	TASK = 2
	FILE = 3
	TIMELOG = 4

	def self.valueOf(i)
		case i
		when ResourceType::PLAN
			'Plan'
		when ResourceType::TASK
			'Task'
		when ResourceType::FILE
			'File'
		when ResourceType::TIMELOG
			'Timelog'
		else
			nil
		end
	end

end