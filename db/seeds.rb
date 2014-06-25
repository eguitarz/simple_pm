# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
project = Project.create(title: 'SimplePM', description: 'The simplest project management tool')
plans = Plan.create([
	{
		title: 'Beta Release', 
		description: 'We are going to launch this project on Aug 1!',
		impact_analysis: 'There will be all new modules from scratch.',
		status: 'created',
		due_at: Time.now + 2.months,
		project: project
	},
	{
		title: 'Launch Release', 
		description: 'We are going to launch this project on Sep 1!',
		impact_analysis: 'The user model will be affected.',
		status: 'created',
		due_at: Time.now + 3.months,
		project: project
	}
])
tasks = Task.create([
	{
		title: 'development environment init setup',
		description: 'Setup project gems and folders.',
		impact_analysis: 'N/A',
		status: 'work in progress',
		estimated_work_hours: 2,
		health: 1,
		progress: 10,
		due_at: Time.now + 1.days
	},
	{
		title: 'Landing page',
		description: 'Create a basic landing page',
		impact_analysis: 'N/A',
		status: 'created',
		estimated_work_hours: 4,
		health: 0,
		progress: 0,
		due_at: Time.now + 2.days
	}
]);